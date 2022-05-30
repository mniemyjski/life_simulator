import 'dart:async';

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:life_simulator/app/money/cubit/money_cubit.dart';

import '../../money/cubit/money_cubit.dart';
import '../../save/save_cubit.dart';
import '../models/income_model.dart';

part 'income_cubit.freezed.dart';
part 'income_cubit.g.dart';
part 'income_state.dart';

@lazySingleton
class IncomeCubit extends HydratedCubit<IncomeState> {
  final MoneyCubit _moneyCubit;
  final SaveCubit _saveCubit;
  late StreamSubscription _save;

  IncomeCubit({
    required MoneyCubit moneyCubit,
    required SaveCubit saveCubit,
  })  : _moneyCubit = moneyCubit,
        _saveCubit = saveCubit,
        super(IncomeState.initial(null)) {
    _saveCubit.state.whenOrNull(loaded: (save) => init(save));
    _save = _saveCubit.stream.listen((s) => s.whenOrNull(loaded: (save) => init(save)));
  }

  @override
  Future<void> close() async {
    _save.cancel();
    super.close();
  }

  init(bool newGame) {
    state.whenOrNull(
      initial: (data) {
        !newGame || data == null ? emit(IncomeState.loaded([])) : emit(IncomeState.loaded(data));
      },
      loaded: (data) {
        !newGame ? emit(IncomeState.loaded([])) : emit(IncomeState.loaded(data));
      },
    );
  }

  add(Income income) {
    state.whenOrNull(loaded: (incomes) {
      List<Income> refresh = List.from(incomes)..add(income);
      emit(IncomeState.loaded(refresh));
    });
  }

  update({required String id, required int value}) {
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
