import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:life_simulator/app/income/models/income_model.dart';

import '../../../../data/data.dart';
import '../../../income/cubit/income_cubit.dart';
import '../../../save/save_cubit.dart';
import '../../models/meal/meal_model.dart';

part 'meal_cubit.freezed.dart';
part 'meal_cubit.g.dart';
part 'meal_state.dart';

@lazySingleton
class MealCubit extends HydratedCubit<MealState> {
  final IncomeCubit _incomeCubit;
  final SaveCubit _saveCubit;
  late StreamSubscription _save;

  MealCubit({required IncomeCubit incomeCubit, required SaveCubit saveCubit})
      : _incomeCubit = incomeCubit,
        _saveCubit = saveCubit,
        super(MealState.initial(meal: null, meals: null)) {
    _saveCubit.state.whenOrNull(loaded: (save) => init(save));
    _save = _saveCubit.stream.listen((s) => s.whenOrNull(loaded: (save) => init(save)));
  }

  @override
  Future<void> close() async {
    _save.cancel();
    super.close();
  }

  init(bool newGame) {
    List<Meal> list = Data.meals();
    Income income = Income(
      id: list.first.id,
      source: ETypeSource.meal,
      typeIncome: ETypeIncome.expense,
      value: -list.first.cost,
      interval: 1,
      timeLeft: 1,
    );

    state.whenOrNull(
      initial: (meal, meals) {
        if (!newGame || meal == null || meals == null) {
          emit(MealState.loaded(meal: list.first, meals: list));
          _incomeCubit.add(income);
        } else {
          emit(MealState.loaded(meal: meal, meals: meals));
        }
      },
      loaded: (meal, meals) {
        if (!newGame) {
          emit(MealState.loaded(meal: list.first, meals: list));
          _incomeCubit.add(income);
        } else {
          emit(MealState.loaded(meal: meal, meals: meals));
        }
      },
    );
  }

  change(String text) {
    state.whenOrNull(loaded: (_meal, _meals) {
      _meals.forEach((element) {
        if ('${element.name}: ${element.cost}\$' == text) {
          Income income = Income(
            id: element.id,
            source: ETypeSource.meal,
            typeIncome: ETypeIncome.expense,
            value: -element.cost,
            interval: 1,
            timeLeft: 1,
          );
          _incomeCubit.remove(_meal.id);
          _incomeCubit.add(income);
          emit(MealState.loaded(meal: element, meals: _meals));
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
