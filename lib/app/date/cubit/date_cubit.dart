import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:life_simulator/app/learning/cubit/learning_cubit.dart';
import 'package:life_simulator/app/settings/cubit/day_setting_cubit.dart';
import 'package:life_simulator/utilities/utilities.dart';

import '../../new_game/new_game_cubit.dart';
import '../../time_spend/cubit/time_spend_cubit.dart';

part 'date_cubit.freezed.dart';
part 'date_cubit.g.dart';
part 'date_state.dart';

@lazySingleton
class DateCubit extends HydratedCubit<DateState> {
  final NewGameCubit _newGameCubit;
  final TimeSpendCubit _timeSpendCubit;
  final DaySettingCubit _daySettingCubit;

  final LearningCubit _learningCubit;
  late StreamSubscription _newGameSub;

  DateCubit(
      {required NewGameCubit newGameCubit,
      required TimeSpendCubit timeSpendCubit,
      required LearningCubit learningCubit,
      required DaySettingCubit daySettingCubit})
      : _timeSpendCubit = timeSpendCubit,
        _learningCubit = learningCubit,
        _newGameCubit = newGameCubit,
        _daySettingCubit = daySettingCubit,
        super(const DateState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(DateState.loaded(DateTime(18, 1, 1)));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(DateState.loaded(DateTime(18, 1, 1)));
    });
  }

  nextDay() {
    for (var i = 0; i < _daySettingCubit.state; i++) {
      state.whenOrNull(loaded: (date) {
        _timeSpendCubit.state.whenOrNull(loaded: (timeSpend) {
          bool result = _learningCubit.counting(timeSpend.learn);
          if (result) _timeSpendCubit.changeLearn(-timeSpend.learn);
        });

        _timeSpendCubit.resetDay();

        //ToDo date do not change, why?
        DateTime dateTime = date.onlyDate().add(const Duration(days: 1)).onlyDate();
        if (date == dateTime) dateTime = date.onlyDate().add(const Duration(days: 2)).onlyDate();

        emit(DateState.loaded(dateTime));
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
