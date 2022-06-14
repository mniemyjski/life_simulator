import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../data/data.dart';
import '../../../income/cubit/income_cubit.dart';
import '../../../income/models/income_model.dart';
import '../../../new_game/new_game_cubit.dart';
import '../../../time_spend/cubit/time_spend_cubit.dart';
import '../../../time_spend/models/bonus/bonus_model.dart';
import '../../models/meal/meal_model.dart';

part 'meal_cubit.freezed.dart';
part 'meal_cubit.g.dart';
part 'meal_state.dart';

@lazySingleton
class MealCubit extends HydratedCubit<MealState> {
  final IncomeCubit _incomeCubit;
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;
  final TimeSpendCubit _timeSpendCubit;

  MealCubit({
    required IncomeCubit incomeCubit,
    required NewGameCubit newGameCubit,
    required TimeSpendCubit timeSpendCubit,
  })  : _incomeCubit = incomeCubit,
        _newGameCubit = newGameCubit,
        _timeSpendCubit = timeSpendCubit,
        super(MealState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    List<Meal> list = Data.meals();
    Income income = Income(
      id: list.first.id,
      source: ETypeSource.meal,
      typeIncome: ETypeIncome.expense,
      value: -list.first.cost,
      eTypeFrequency: ETypeFrequency.daily,
    );

    if (_newGameCubit.state) {
      emit(MealState.loaded(meal: list.first, meals: list));
      _incomeCubit.add(income);
    }
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) {
        emit(MealState.loaded(meal: list.first, meals: list));
        _incomeCubit.add(income);
      }
    });
  }

  change(String text) {
    state.whenOrNull(loaded: (_meal, _meals) {
      _meals.forEach((meal) {
        if ('${meal.name}: ${meal.cost}\$' == text) {
          Income income = Income(
            id: meal.id,
            source: ETypeSource.meal,
            typeIncome: ETypeIncome.expense,
            value: -meal.cost,
            eTypeFrequency: ETypeFrequency.daily,
          );

          _timeSpendCubit.removeBonuses(ETypeBonusSource.meal);

          if (meal.bonusToRelax != 0)
            _timeSpendCubit.addBonuses(
              Bonus(
                  eTypeBonus: ETypeBonus.relax,
                  eTypeBonusSource: ETypeBonusSource.meal,
                  value: meal.bonusToRelax),
            );

          if (meal.bonusToSleep != 0)
            _timeSpendCubit.addBonuses(
              Bonus(
                  eTypeBonus: ETypeBonus.sleep,
                  eTypeBonusSource: ETypeBonusSource.meal,
                  value: meal.bonusToSleep),
            );

          if (meal.bonusToLearn != 0)
            _timeSpendCubit.addBonuses(
              Bonus(
                  eTypeBonus: ETypeBonus.learn,
                  eTypeBonusSource: ETypeBonusSource.meal,
                  value: meal.bonusToLearn),
            );

          _incomeCubit.remove(_meal.id);
          _incomeCubit.add(income);
          emit(MealState.loaded(meal: meal, meals: _meals));
          return;
        }
      });
    });
  }

  List<String> toListString() {
    return state.maybeWhen(
        orElse: () => [],
        loaded: (meal, meals) {
          List<String> list = [];
          meals
            ..forEach((element) {
              list.add('${element.name}: ${element.cost}\$');
            });
          return list;
        });
  }

  @override
  MealState? fromJson(Map<String, dynamic> json) {
    return MealState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(MealState state) {
    return state.toJson();
  }
}
