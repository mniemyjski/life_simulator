import 'dart:async';

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../money/cubit/money_cubit.dart';
import '../../new_game/new_game_cubit.dart';
import '../models/income_model.dart';

part 'income_cubit.freezed.dart';
part 'income_cubit.g.dart';
part 'income_state.dart';

@lazySingleton
class IncomeCubit extends HydratedCubit<IncomeState> {
  final MoneyCubit _moneyCubit;
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  IncomeCubit({
    required MoneyCubit moneyCubit,
    required NewGameCubit saveCubit,
  })  : _moneyCubit = moneyCubit,
        _newGameCubit = saveCubit,
        super(IncomeState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(IncomeState.loaded([]));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(IncomeState.loaded([]));
    });
  }

  add(Income income) {
    state.whenOrNull(loaded: (incomes) {
      List<Income> refresh = List.from(incomes)..add(income);
      emit(IncomeState.loaded(refresh));
    });
  }

  update({required String id, required double value}) {
    state.whenOrNull(loaded: (incomes) {
      Income? income = incomes.firstWhere((element) => element.id == id);
      List<Income> refresh = List.from(incomes)..removeWhere((element) => element.id == id);

      refresh.add(income.copyWith(value: value));
      emit(IncomeState.loaded(refresh));
    });
  }

  remove(String id) {
    state.whenOrNull(loaded: (incomes) {
      List<Income> refresh = List.from(incomes)..removeWhere((element) => element.id == id);
      emit(IncomeState.loaded(refresh));
    });
  }

  counting() {
    state.whenOrNull(loaded: (incomes) {
      List<Income> result = [];

      incomes
        ..forEach((element) {
          if (element.timeLeft > 1) {
            result.add(element.copyWith(timeLeft: element.timeLeft - 1));
          }

          if (element.timeLeft == 1) {
            result.add(element.copyWith(timeLeft: element.interval));
            _moneyCubit.change(element.value);
          }
        });

      emit(IncomeState.loaded(result));
    });
  }

  @override
  IncomeState? fromJson(Map<String, dynamic> json) {
    return IncomeState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(IncomeState state) {
    return state.toJson();
  }
}
