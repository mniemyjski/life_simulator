import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../new_game/new_game_cubit.dart';
import '../models/time_bonus/time_bonus_model.dart';
import '../models/time_spend_model/time_spend_model.dart';

part 'time_spend_cubit.freezed.dart';
part 'time_spend_cubit.g.dart';
part 'time_spend_state.dart';

@lazySingleton
class TimeSpendCubit extends HydratedCubit<TimeSpendState> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;
  late StreamSubscription _transportSub;

  TimeSpendCubit(
    this._newGameCubit,
  ) : super(const TimeSpendState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    _transportSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) {
      emit(TimeSpendState.loaded(TimeSpend.newGame()));
    }
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) {
        emit(TimeSpendState.loaded(TimeSpend.newGame()));
      }
    });
  }

  bool checkFreeTime(int value) {
    return state.maybeWhen(
      orElse: () => false,
      loaded: (timeSpend) => timeSpend.free >= value ? true : false,
    );
  }

  String? changeWork(int work) {
    var result = state.whenOrNull(loaded: (timeSpend) {
      TimeSpend refresh = timeSpend.copyWith(
        work: timeSpend.work + work,
        free: timeSpend.free - work,
      );
      emit(TimeSpendState.loaded(refresh));
    });
    return result;
  }

  String? changeCommuting(int commuting) {
    var result = state.whenOrNull(loaded: (timeSpend) {
      TimeSpend refresh = timeSpend.copyWith(
        commuting: timeSpend.commuting + commuting,
        free: timeSpend.free - commuting,
      );
      emit(TimeSpendState.loaded(refresh));
    });
    return result;
  }

  String? changeLearn(int hours) {
    var result = state.whenOrNull(loaded: (timeSpend) {
      if (timeSpend.learn == 0 && hours < 0) return null;
      if (timeSpend.free < hours) return "You don't have free time";

      TimeSpend refresh = timeSpend.copyWith(
        learn: timeSpend.learn + hours,
        free: timeSpend.free - hours,
      );
      emit(TimeSpendState.loaded(refresh));
    });

    return result;
  }

  String? changeRelax(int hours) {
    var result = state.whenOrNull(loaded: (timeSpend) {
      if (timeSpend.relax == 0 && hours < 0) return null;
      if (timeSpend.free < hours) return "You don't have free time";

      TimeSpend refresh = timeSpend.copyWith(
        relax: timeSpend.relax + hours,
        free: timeSpend.free - hours,
      );
      emit(TimeSpendState.loaded(refresh));
    });

    return result;
  }

  String? changeSleep(int hours) {
    var result = state.whenOrNull(loaded: (timeSpend) {
      if (timeSpend.sleep == 0 && hours < 0) return null;
      if (timeSpend.free < hours) return "You don't have free time";

      TimeSpend refresh = timeSpend.copyWith(
        sleep: timeSpend.sleep + hours,
        free: timeSpend.free - hours,
      );
      emit(TimeSpendState.loaded(refresh));
    });
    return result;
  }

  String? changeFreelance(int hours) {
    var result = state.whenOrNull(loaded: (timeSpend) {
      if (timeSpend.freelance == 0 && hours < 0) return null;
      if (timeSpend.free < hours) return "You don't have free time";

      TimeSpend refresh = timeSpend.copyWith(
        freelance: timeSpend.freelance + hours,
        free: timeSpend.free - hours,
      );
      emit(TimeSpendState.loaded(refresh));
    });
    return result;
  }

  String? changeUsed(int hours) {
    var result = state.whenOrNull(loaded: (timeSpend) {
      if (timeSpend.free < hours) return "You don't have free time";

      TimeSpend refresh = timeSpend.copyWith(
        used: timeSpend.used + hours,
        free: timeSpend.free - hours,
      );
      emit(TimeSpendState.loaded(refresh));
    });
    return result;
  }

  addBonus(List<TimeBonus> bonuses) {
    if (bonuses.isEmpty) return;

    state.whenOrNull(loaded: (timeSpend) {
      List<TimeBonus> result = List.from(timeSpend.bonuses)
        ..removeWhere((e) => e.eTypeBonusSource == bonuses.first.eTypeBonusSource)
        ..addAll(bonuses);
      emit(TimeSpendState.loaded(timeSpend.copyWith(bonuses: result)));
    });
  }

  removeBonus(ETypeBonusSource eTypeBonusSource) {
    state.whenOrNull(loaded: (timeSpend) {
      List<TimeBonus> result = List.from(timeSpend.bonuses)
        ..removeWhere((element) => element.eTypeBonusSource == eTypeBonusSource);

      emit(TimeSpendState.loaded(timeSpend.copyWith(bonuses: result)));
    });
  }

  bool checkBonusSource(ETypeBonusSource eTypeBonusSource) {
    return state.maybeWhen(
      orElse: () => false,
      loaded: (timeSpend) => timeSpend.checkBonusSource(eTypeBonusSource) ? true : false,
    );
  }

  resetDay() {
    return state.whenOrNull(loaded: (timeSpend) {
      int commuting = timeSpend.getBonus(ETypeBonus.commuting);

      TimeSpend refresh = timeSpend.copyWith(
        used: 0,
        free: 24 -
            timeSpend.learn -
            timeSpend.work -
            timeSpend.relax -
            timeSpend.sleep -
            timeSpend.freelance -
            (timeSpend.commuting - commuting),
      );
      emit(TimeSpendState.loaded(refresh));
    });
  }

  @override
  TimeSpendState? fromJson(Map<String, dynamic> json) {
    return TimeSpendState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(TimeSpendState state) {
    return state.toJson();
  }
}
