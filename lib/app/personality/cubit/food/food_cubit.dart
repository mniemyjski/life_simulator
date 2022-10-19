import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:richeable/app/money/models/transaction/transaction_model.dart';

import '../../../../repositories/time_spend_repository.dart';
import '../../../database/cubit/database_cubit.dart';
import '../../../money/cubit/income/income_cubit.dart';
import '../../../money/models/income/income_model.dart';
import '../../../new_game/new_game_cubit.dart';
import '../../../time_spend/models/time_bonus/time_bonus_model.dart';
import '../../models/food/food_model.dart';

part 'food_cubit.freezed.dart';
part 'food_cubit.g.dart';
part 'food_state.dart';

@lazySingleton
class FoodCubit extends HydratedCubit<FoodState> {
  final IncomeCubit _incomeCubit;
  final DatabaseCubit _databaseCubit;
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;
  final TimeSpendRepository _timeSpendRepository;

  FoodCubit(
    this._incomeCubit,
    this._databaseCubit,
    this._newGameCubit,
    this._timeSpendRepository,
  ) : super(const FoodState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) {
      List<Food> list = _databaseCubit.state.foodsDB;
      Income income = Income(
        id: list.first.id,
        source: ETypeTransactionSource.food,
        typeIncome: ETypeIncome.expense,
        value: list.first.cost,
        eTypeFrequency: ETypeFrequency.daily,
      );
      emit(FoodState.loaded(food: list.first));
      _incomeCubit.add(income);
      _timeSpendRepository.addBonuses(
        [
          TimeBonus(
            eTypeBonus: ETypeBonus.relax,
            eTypeBonusSource: ETypeBonusSource.meal,
            value: _databaseCubit.state.foodsDB.first.bonusToRelax,
          ),
          TimeBonus(
            eTypeBonus: ETypeBonus.sleep,
            eTypeBonusSource: ETypeBonusSource.meal,
            value: _databaseCubit.state.foodsDB.first.bonusToSleep,
          ),
          TimeBonus(
            eTypeBonus: ETypeBonus.learn,
            eTypeBonusSource: ETypeBonusSource.meal,
            value: _databaseCubit.state.foodsDB.first.bonusToLearn,
          ),
        ],
      );
    }
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) {
        List<Food> list = _databaseCubit.state.foodsDB;
        Income income = Income(
          id: list.first.id,
          source: ETypeTransactionSource.food,
          typeIncome: ETypeIncome.expense,
          value: list.first.cost,
          eTypeFrequency: ETypeFrequency.daily,
        );
        emit(FoodState.loaded(food: list.first));
        _incomeCubit.add(income);
        _timeSpendRepository.addBonuses(
          [
            TimeBonus(
              eTypeBonus: ETypeBonus.relax,
              eTypeBonusSource: ETypeBonusSource.meal,
              value: _databaseCubit.state.foodsDB.first.bonusToRelax,
            ),
            TimeBonus(
              eTypeBonus: ETypeBonus.sleep,
              eTypeBonusSource: ETypeBonusSource.meal,
              value: _databaseCubit.state.foodsDB.first.bonusToSleep,
            ),
            TimeBonus(
              eTypeBonus: ETypeBonus.learn,
              eTypeBonusSource: ETypeBonusSource.meal,
              value: _databaseCubit.state.foodsDB.first.bonusToLearn,
            ),
          ],
        );
      }
    });
  }

  change(Food food) {
    state.whenOrNull(loaded: (oldFood) {
      Income income = Income(
        id: food.id,
        source: ETypeTransactionSource.food,
        typeIncome: ETypeIncome.expense,
        value: food.cost,
        eTypeFrequency: ETypeFrequency.daily,
      );

      _timeSpendRepository.addBonuses(
        [
          TimeBonus(
              eTypeBonus: ETypeBonus.relax,
              eTypeBonusSource: ETypeBonusSource.meal,
              value: food.bonusToRelax),
          TimeBonus(
              eTypeBonus: ETypeBonus.sleep,
              eTypeBonusSource: ETypeBonusSource.meal,
              value: food.bonusToSleep),
          TimeBonus(
              eTypeBonus: ETypeBonus.learn,
              eTypeBonusSource: ETypeBonusSource.meal,
              value: food.bonusToLearn),
        ],
      );

      _incomeCubit.remove(oldFood.id);
      _incomeCubit.add(income);
      emit(FoodState.loaded(food: food));
    });
  }

  @override
  FoodState? fromJson(Map<String, dynamic> json) {
    return FoodState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(FoodState state) {
    return state.toJson();
  }
}
