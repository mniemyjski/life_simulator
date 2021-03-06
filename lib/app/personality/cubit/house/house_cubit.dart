import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../database/cubit/database_cubit.dart';
import '../../../income/cubit/income_cubit.dart';
import '../../../income/models/income_model.dart';
import '../../../money/cubit/money_cubit.dart';
import '../../../new_game/new_game_cubit.dart';
import '../../../time_spend/cubit/time_spend_cubit.dart';
import '../../../time_spend/models/bonus/bonus_model.dart';
import '../../models/house/house_model.dart';

part 'house_cubit.freezed.dart';
part 'house_cubit.g.dart';
part 'house_state.dart';

@lazySingleton
class HouseCubit extends HydratedCubit<HouseState> {
  final DatabaseCubit _databaseCubit;
  final MoneyCubit _moneyCubit;
  final TimeSpendCubit _timeSpendCubit;
  final IncomeCubit _incomeCubit;
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  HouseCubit(
    DatabaseCubit databaseCubit,
    MoneyCubit moneyCubit,
    IncomeCubit incomeCubit,
    NewGameCubit newGameCubit,
    TimeSpendCubit timeSpendCubit,
  )   : _moneyCubit = moneyCubit,
        _incomeCubit = incomeCubit,
        _newGameCubit = newGameCubit,
        _timeSpendCubit = timeSpendCubit,
        _databaseCubit = databaseCubit,
        super(HouseState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(HouseState.loaded(house: null));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(HouseState.loaded(house: null));
    });
  }

  String? getHouse(House house) {
    if (_moneyCubit.state < house.cost && house.eTypeHouse == ETypeHouse.buy)
      return "You don't have enough money";

    return state.whenOrNull(loaded: (_house) {
      if ((_house?.eTypeHouse ?? ETypeHouse.rent) == ETypeHouse.buy)
        return "Before you can buy new house you must to sell your house";

      Income income = Income(
          id: house.id,
          source: ETypeSource.house,
          typeIncome: ETypeIncome.expense,
          value: -house.monthlyCost,
          eTypeFrequency: ETypeFrequency.monthly);
      _timeSpendCubit.removeBonuses(ETypeBonusSource.house);

      _timeSpendCubit.addBonuses(
        Bonus(
            eTypeBonus: ETypeBonus.relax,
            eTypeBonusSource: ETypeBonusSource.house,
            value: house.bonusToRelax),
      );

      _timeSpendCubit.addBonuses(
        Bonus(
            eTypeBonus: ETypeBonus.sleep,
            eTypeBonusSource: ETypeBonusSource.house,
            value: house.bonusToSleep),
      );

      _timeSpendCubit.addBonuses(
        Bonus(
            eTypeBonus: ETypeBonus.learn,
            eTypeBonusSource: ETypeBonusSource.house,
            value: house.bonusToLearn),
      );

      _moneyCubit.change(-house.cost);
      _incomeCubit.add(income);
      if (_house != null && _house.eTypeHouse == ETypeHouse.rent) _incomeCubit.remove(_house.id);

      emit(HouseState.loaded(house: house));

      return 'succeed';
    });
  }

  sell() {
    state.whenOrNull(loaded: (_house) {
      if (_house != null) {
        _timeSpendCubit.removeBonuses(ETypeBonusSource.house);
        _incomeCubit.remove(_house.id);
        _moneyCubit.change(_house.cost * 0.8);
        emit(HouseState.loaded(house: null));
      }
    });
  }

  @override
  HouseState? fromJson(Map<String, dynamic> json) {
    return HouseState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(HouseState state) {
    return state.toJson();
  }
}
