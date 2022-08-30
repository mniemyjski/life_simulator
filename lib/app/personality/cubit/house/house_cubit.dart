import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:life_simulator/app/money/models/transaction/transaction_model.dart';

import '../../../income/cubit/income_cubit.dart';
import '../../../income/models/income_model.dart';
import '../../../money/cubit/money_cubit.dart';
import '../../../new_game/new_game_cubit.dart';
import '../../../time_spend/cubit/time_spend_cubit.dart';
import '../../../time_spend/models/time_bonus/time_bonus_model.dart';
import '../../models/house/house_model.dart';

part 'house_cubit.freezed.dart';
part 'house_cubit.g.dart';
part 'house_state.dart';

@lazySingleton
class HouseCubit extends HydratedCubit<HouseState> {
  final MoneyCubit _moneyCubit;
  final TimeSpendCubit _timeSpendCubit;
  final IncomeCubit _incomeCubit;
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  HouseCubit(
    this._moneyCubit,
    this._timeSpendCubit,
    this._incomeCubit,
    this._newGameCubit,
  ) : super(const HouseState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(const HouseState.loaded(house: null));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(const HouseState.loaded(house: null));
    });
  }

  Future<String?> getHouse(House newHouse) async {
    if (_moneyCubit.state < newHouse.cost && newHouse.eTypeHouse == ETypeHouse.buy) {
      return "You don't have enough money";
    }

    return state.whenOrNull(loaded: (oldHouse) {
      if ((oldHouse?.eTypeHouse ?? ETypeHouse.rent) == ETypeHouse.buy) {
        return "Before you can buy new house you must to sell your house";
      }

      Income income = Income(
          id: newHouse.id,
          source: ETypeSource.house,
          typeIncome: ETypeIncome.expense,
          value: newHouse.monthlyCost,
          eTypeFrequency: ETypeFrequency.monthly);

      _timeSpendCubit.addBonus(
        [
          TimeBonus(
              eTypeBonus: ETypeBonus.relax,
              eTypeBonusSource: ETypeBonusSource.house,
              value: newHouse.bonusToRelax),
          TimeBonus(
              eTypeBonus: ETypeBonus.sleep,
              eTypeBonusSource: ETypeBonusSource.house,
              value: newHouse.bonusToSleep),
          TimeBonus(
              eTypeBonus: ETypeBonus.learn,
              eTypeBonusSource: ETypeBonusSource.house,
              value: newHouse.bonusToLearn),
        ],
      );

      _moneyCubit.addTransaction(
          value: -newHouse.cost, eTypeTransactionSource: ETypeTransactionSource.house);

      _incomeCubit.add(income);
      if (oldHouse != null && oldHouse.eTypeHouse == ETypeHouse.rent) {
        _incomeCubit.remove(oldHouse.id);
      }

      emit(HouseState.loaded(house: newHouse));

      return 'succeed';
    });
  }

  sell() {
    state.whenOrNull(loaded: (_house) {
      if (_house != null) {
        _timeSpendCubit.removeBonus(ETypeBonusSource.house);
        _incomeCubit.remove(_house.id);
        _moneyCubit.addTransaction(
            value: _house.cost * 0.8, eTypeTransactionSource: ETypeTransactionSource.house);
        emit(const HouseState.loaded(house: null));
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
