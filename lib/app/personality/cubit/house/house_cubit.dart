import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:life_simulator/app/income/models/income_model.dart';
import 'package:life_simulator/app/time_spend/cubit/time_spend_cubit.dart';

import '../../../../data/data.dart';
import '../../../income/cubit/income_cubit.dart';
import '../../../money/cubit/money_cubit.dart';
import '../../../save/save_cubit.dart';
import '../../../time_spend/models/bonus/bonus_model.dart';
import '../../models/house/house_model.dart';

part 'house_cubit.freezed.dart';
part 'house_cubit.g.dart';
part 'house_state.dart';

@lazySingleton
class HouseCubit extends Cubit<HouseState> {
  final MoneyCubit _moneyCubit;
  final TimeSpendCubit _timeSpendCubit;
  final IncomeCubit _incomeCubit;
  final SaveCubit _saveCubit;
  late StreamSubscription _save;

  HouseCubit({
    required MoneyCubit moneyCubit,
    required IncomeCubit incomeCubit,
    required SaveCubit saveCubit,
    required TimeSpendCubit timeSpendCubit,
  })  : _moneyCubit = moneyCubit,
        _incomeCubit = incomeCubit,
        _saveCubit = saveCubit,
        _timeSpendCubit = timeSpendCubit,
        super(HouseState.initial(house: null, houses: null)) {
    _saveCubit.state.whenOrNull(loaded: (save) => init(save));
    _save = _saveCubit.stream.listen((s) => s.whenOrNull(loaded: (save) => init(save)));
  }

  @override
  Future<void> close() async {
    _save.cancel();
    super.close();
  }

  init(bool newGame) {
    List<House> list = Data.houses();

    state.whenOrNull(
      initial: (house, houses) {
        !newGame || houses == null
            ? emit(HouseState.loaded(house: null, houses: list))
            : emit(HouseState.loaded(house: house, houses: houses));
      },
      loaded: (house, houses) {
        !newGame
            ? emit(HouseState.loaded(house: null, houses: list))
            : emit(HouseState.loaded(house: house, houses: houses));
      },
    );
  }

  String? getHouse(House house) {
    if (_moneyCubit.state < house.cost && house.eTypeHouse == ETypeHouse.buy)
      return "You don't have enough money";

    return state.whenOrNull(loaded: (_house, _houses) {
      if ((_house?.eTypeHouse ?? ETypeHouse.rent) == ETypeHouse.buy)
        return "Before you can buy new house you must to sell your house";

      Income income = Income(
        id: house.id,
        source: ETypeSource.house,
        typeIncome: ETypeIncome.expense,
        value: -house.monthlyCost,
        interval: 30,
        timeLeft: 30,
      );
      _timeSpendCubit.removeBonuses(ETypeBonusSource.house);

      if (house.bonusToRelax != 0)
        _timeSpendCubit.addBonuses(
          Bonus(
              eTypeBonus: ETypeBonus.relax,
              eTypeBonusSource: ETypeBonusSource.house,
              value: house.bonusToRelax),
        );

      if (house.bonusToSleep != 0)
        _timeSpendCubit.addBonuses(
          Bonus(
              eTypeBonus: ETypeBonus.sleep,
              eTypeBonusSource: ETypeBonusSource.house,
              value: house.bonusToSleep),
        );

      if (house.bonusToLearn != 0)
        _timeSpendCubit.addBonuses(
          Bonus(
              eTypeBonus: ETypeBonus.learn,
              eTypeBonusSource: ETypeBonusSource.house,
              value: house.bonusToLearn),
        );

      _moneyCubit.change(-house.cost);
      _incomeCubit.add(income);
      if (_house != null && _house.eTypeHouse == ETypeHouse.rent) _incomeCubit.remove(_house.id);

      emit(HouseState.loaded(house: house, houses: _houses));

      return 'succeed';
    });
  }

  sell() {
    state.whenOrNull(loaded: (_house, _houses) {
      if (_house != null) {
        _timeSpendCubit.removeBonuses(ETypeBonusSource.house);
        _incomeCubit.remove(_house.id);
        _moneyCubit.change((_house.cost * 0.8).toInt());
        emit(HouseState.loaded(house: null, houses: _houses));
      }
    });
  }
}
