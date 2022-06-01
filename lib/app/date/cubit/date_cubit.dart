import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:life_simulator/app/date/models/date_game_model.dart';
import 'package:life_simulator/app/learning/cubit/learning_cubit.dart';
import 'package:life_simulator/app/settings/cubit/day_setting_cubit.dart';

import '../../income/cubit/income_cubit.dart';
import '../../save/save_cubit.dart';
import '../../time_spend/cubit/time_spend_cubit.dart';

part 'date_cubit.freezed.dart';
part 'date_cubit.g.dart';
part 'date_state.dart';

@lazySingleton
class DateCubit extends HydratedCubit<DateState> {
  final SaveCubit _saveCubit;
  final TimeSpendCubit _timeSpendCubit;
  final DaySettingCubit _daySettingCubit;

  final LearningCubit _learningCubit;
  final IncomeCubit _incomeCubit;
  late StreamSubscription _save;

  DateCubit(
      {required SaveCubit saveCubit,
      required TimeSpendCubit timeSpendCubit,
      required LearningCubit learningCubit,
      required IncomeCubit incomeCubit,
      required DaySettingCubit daySettingCubit})
      : _timeSpendCubit = timeSpendCubit,
        _learningCubit = learningCubit,
        _incomeCubit = incomeCubit,
        _saveCubit = saveCubit,
        _daySettingCubit = daySettingCubit,
        super(DateState.initial()) {
    _saveCubit.state.whenOrNull(loaded: (save) => init(save));
    _save = _saveCubit.stream.listen((s) => s.whenOrNull(loaded: (save) => init(save)));
  }

  @override
  Future<void> close() async {
    _save.cancel();
    super.close();
  }

  init(bool newGame) async {
    state.whenOrNull(
      initial: () => emit(DateState.loaded(DateGame(year: 18, month: 1, day: 1))),
      loaded: (data) {
        if (!newGame) emit(DateState.loaded(DateGame(year: 18, month: 1, day: 1)));
      },
    );
  }

  nextDay() {
    for (var i = 0; i < _daySettingCubit.state; i++) {
      state.whenOrNull(loaded: (date) {
        _timeSpendCubit.state.whenOrNull(loaded: (timeSpend) {
          bool result = _learningCubit.counting(timeSpend.learn);
          if (result) _timeSpendCubit.changeLearn(-timeSpend.learn);
        });

        _timeSpendCubit.resetDay();
        _incomeCubit.counting();

        if (date.day < 30) {
          emit(DateState.loaded(date.copyWith(day: date.day + 1)));
        } else {
          if (date.month < 12) {
            emit(DateState.loaded(date.copyWith(day: 1, month: date.month + 1)));
          } else {
            emit(DateState.loaded(date.copyWith(day: 1, month: 1, year: date.year + 1)));
          }
        }
      });
    }
  }

  @override
  DateState? fromJson(Map<String, dynamic> json) {
    return DateState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(DateState state) {
    return state.toJson();
  }
}
