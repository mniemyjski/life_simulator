import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../database/cubit/database_cubit.dart';
import '../../../income/cubit/income_cubit.dart';
import '../../../income/models/income_model.dart';
import '../../../new_game/new_game_cubit.dart';
import '../../../time_spend/cubit/time_spend_cubit.dart';
import '../../../time_spend/models/time_bonus/time_bonus_model.dart';
import '../../models/food/food_model.dart';

part 'foods_cubit.freezed.dart';
part 'foods_cubit.g.dart';
part 'foods_state.dart';

@lazySingleton
class FoodsCubit extends HydratedCubit<FoodsState> {
  final IncomeCubit _incomeCubit;
  final DatabaseCubit _databaseCubit;
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;
  final TimeSpendCubit _timeSpendCubit;

  FoodsCubit(
    this._incomeCubit,
    this._databaseCubit,
    this._newGameCubit,
    this._timeSpendCubit,
  ) : super(const FoodsState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    List<Food> list = _databaseCubit.state.foodsDB;
    Income income = Income(
      id: list.first.id,
      source: ETypeSource.meal,
      typeIncome: ETypeIncome.expense,
      value: -list.first.cost,
      eTypeFrequency: ETypeFrequency.daily,
    );

    if (_newGameCubit.state) {
      emit(FoodsState.loaded(food: list.first));
      _incomeCubit.add(income);
      _timeSpendCubit.addBonus(
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
        emit(FoodsState.loaded(food: list.first));
        _incomeCubit.add(income);
        _timeSpendCubit.addBonus(
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
        source: ETypeSource.meal,
        typeIncome: ETypeIncome.expense,
        value: -food.cost,
        eTypeFrequency: ETypeFrequency.daily,
      );

      _timeSpendCubit.addBonus(
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
      emit(FoodsState.loaded(food: food));
      return;
    });
  }

  @override
  FoodsState? fromJson(Map<String, dynamic> json) {
    return FoodsState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(FoodsState state) {
    return state.toJson();
  }
}
