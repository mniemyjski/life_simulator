import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../loading/cubit/loading_cubit.dart';
import '../../new_game/new_game_cubit.dart';
import '../../settings/cubit/day_setting_cubit.dart';

part 'date_cubit.freezed.dart';
part 'date_cubit.g.dart';
part 'date_state.dart';

@lazySingleton
class DateCubit extends HydratedCubit<DateState> {
  final NewGameCubit _newGameCubit;
  final DaySettingCubit _daySettingCubit;
  late StreamSubscription _newGameSub;

  final LoadingCubit _loadingCubit;

  DateCubit(
    this._newGameCubit,
    this._daySettingCubit,
    this._loadingCubit,
  ) : super(const DateState.initial()) {
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

  nextDay() async {
    String uid = _loadingCubit.add();
    for (var i = 0; i < _daySettingCubit.state; i++) {
      await Future.delayed(const Duration(milliseconds: 200));
      state.whenOrNull(loaded: (date) {
        DateTime dateTime = date.addDate(days: 1);

        emit(DateState.loaded(dateTime));
      });
    }
    _loadingCubit.remove(uid);
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
