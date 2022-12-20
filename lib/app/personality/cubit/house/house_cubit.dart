import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../utilities/utilities.dart';
import '../../../database/cubit/database_cubit.dart';
import '../../../date/cubit/date_cubit.dart';
import '../../../money/cubit/income/income_cubit.dart';
import '../../../money/cubit/money/money_cubit.dart';
import '../../../money/models/income/income_model.dart';
import '../../../money/models/transaction/transaction_model.dart';
import '../../../new_game/new_game_cubit.dart';
import '../../../time_spend/models/time_bonus/time_bonus_model.dart';
import '../../../time_spend/repositories/time_spend_repository.dart';
import '../../models/house/house_model.dart';

part 'house_cubit.freezed.dart';
part 'house_cubit.g.dart';
part 'house_state.dart';

@lazySingleton
class HouseCubit extends HydratedCubit<HouseState> {
  final MoneyCubit _moneyCubit;
  final TimeSpendRepository _timeSpendRepository;
  final IncomeCubit _incomeCubit;
  final DatabaseCubit _databaseCubit;
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  final DateCubit _dateCubit;

  HouseCubit(
    this._moneyCubit,
    this._incomeCubit,
    this._newGameCubit,
    this._databaseCubit,
    this._dateCubit,
    this._timeSpendRepository,
  ) : super(const HouseState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) {
      House house = _databaseCubit.state.housesDB.first;
      Income income = Income(
        uid: house.uid,
        source: ETypeTransactionSource.home,
        typeIncome: ETypeIncome.expense,
        value: house.monthlyCost,
        eTypeFrequency: ETypeFrequency.monthly,
      );
      _timeSpendRepository.addBonuses(
        [
          TimeBonus(
              eTypeBonus: ETypeBonus.relax,
              eTypeBonusSource: ETypeBonusSource.house,
              value: house.bonusToRelax),
          TimeBonus(
              eTypeBonus: ETypeBonus.sleep,
              eTypeBonusSource: ETypeBonusSource.house,
              value: house.bonusToSleep),
          TimeBonus(
              eTypeBonus: ETypeBonus.learn,
              eTypeBonusSource: ETypeBonusSource.house,
              value: house.bonusToLearn),
        ],
      );

      _incomeCubit.add(income);
      emit(HouseState.loaded(house: house));
    }

    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) {
        House house = _databaseCubit.state.housesDB.first;
        Income income = Income(
          uid: house.uid,
          source: ETypeTransactionSource.home,
          typeIncome: ETypeIncome.expense,
          value: house.monthlyCost,
          eTypeFrequency: ETypeFrequency.monthly,
        );
        _timeSpendRepository.addBonuses(
          [
            TimeBonus(
                eTypeBonus: ETypeBonus.relax,
                eTypeBonusSource: ETypeBonusSource.house,
                value: house.bonusToRelax),
            TimeBonus(
                eTypeBonus: ETypeBonus.sleep,
                eTypeBonusSource: ETypeBonusSource.house,
                value: house.bonusToSleep),
            TimeBonus(
                eTypeBonus: ETypeBonus.learn,
                eTypeBonusSource: ETypeBonusSource.house,
                value: house.bonusToLearn),
          ],
        );

        _incomeCubit.add(income);
        emit(HouseState.loaded(house: house));
      }
    });
  }

  Future<String?> getHouse(House newHouse) async {
    if (_moneyCubit.getBalance() < -newHouse.cost) {
      return "You don't have enough money.";
    }

    return state.whenOrNull(loaded: (oldHouse) {
      if ((oldHouse?.eTypeHouse ?? ETypeHouse.rent) == ETypeHouse.buy) {
        return "Before you can buy new house you must to sell your house.";
      }

      Income income = Income(
          uid: newHouse.uid,
          source: ETypeTransactionSource.home,
          typeIncome: ETypeIncome.expense,
          value: newHouse.monthlyCost,
          eTypeFrequency: ETypeFrequency.monthly);

      _timeSpendRepository.addBonuses(
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

      _dateCubit.state.whenOrNull(loaded: (date) {
        _moneyCubit.addTransaction(
            dateTime: date,
            value: newHouse.cost,
            eTypeTransactionSource: ETypeTransactionSource.home);
      });

      _incomeCubit.add(income);
      if (oldHouse != null && oldHouse.eTypeHouse == ETypeHouse.rent) {
        _incomeCubit.remove(oldHouse.uid);
      }

      emit(HouseState.loaded(house: newHouse));

      return 'succeed';
    });
  }

  sell() {
    _dateCubit.state.whenOrNull(loaded: (date) {
      state.whenOrNull(loaded: (house) {
        if (house != null) {
          _timeSpendRepository.removeBonus(ETypeBonusSource.house);
          _incomeCubit.remove(house.uid);
          _moneyCubit.addTransaction(
              dateTime: date,
              value: house.cost * 0.8,
              eTypeTransactionSource: ETypeTransactionSource.home);
          emit(const HouseState.loaded(house: null));
        }
      });
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
