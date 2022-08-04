import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../new_game/new_game_cubit.dart';
import '../models/bonus/bonus_model.dart';
import '../models/time_spend_model/time_spend_model.dart';

part 'time_spend_cubit.freezed.dart';
part 'time_spend_cubit.g.dart';
part 'time_spend_state.dart';

@lazySingleton
class TimeSpendCubit extends HydratedCubit<TimeSpendState> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;
  late StreamSubscription _transportSub;

  TimeSpendCubit({
    required NewGameCubit newGameCubit,
  })  : _newGameCubit = newGameCubit,
        super(const TimeSpendState.initial()) {
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
      emit(const TimeSpendState.loaded(TimeSpend(
        free: 14,
        work: 0,
        commuting: 0,
        learn: 0,
        relax: 2,
        sleep: 8,
        used: 0,
        bonuses: [],
      )));
    }
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) {
        emit(const TimeSpendState.loaded(TimeSpend(
          free: 14,
          work: 0,
          commuting: 0,
          learn: 0,
          relax: 2,
          sleep: 8,
          used: 0,
          bonuses: [],
        )));
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

  addBonuses(Bonus bonus) {
    state.whenOrNull(loaded: (timeSpend) {
      List<Bonus> result = List.from(timeSpend.bonuses)..add(bonus);
      emit(TimeSpendState.loaded(timeSpend.copyWith(bonuses: result)));
    });
  }

  removeBonuses(ETypeBonusSource eTypeBonusSource) {
    state.whenOrNull(loaded: (timeSpend) {
      List<Bonus> result = List.from(timeSpend.bonuses)
        ..removeWhere((element) => element.eTypeBonusSource == eTypeBonusSource);

      emit(TimeSpendState.loaded(timeSpend.copyWith(bonuses: result)));
    });
  }

  int getBonus(ETypeBonus eTypeBonus) {
    return state.maybeWhen(
        loaded: (timeSpend) {
          int bonus = 0;
          for (var element in timeSpend.bonuses) {
            if (element.eTypeBonus == eTypeBonus) bonus += element.value;
          }

          switch (eTypeBonus) {
            case ETypeBonus.commuting:
              return timeSpend.commuting < bonus ? timeSpend.commuting : bonus;
            case ETypeBonus.relax:
              return bonus - (checkBonusSource(ETypeBonusSource.house) ? 0 : 4);
            case ETypeBonus.sleep:
              return bonus - (checkBonusSource(ETypeBonusSource.house) ? 0 : 6);
            case ETypeBonus.learn:
              return bonus - (checkBonusSource(ETypeBonusSource.house) ? 0 : 2);
          }
        },
        orElse: () => 0);
  }

  bool checkBonusSource(ETypeBonusSource eTypeBonusSource) {
    bool check = false;
    state.whenOrNull(
      loaded: (timeSpend) {
        for (var i = 0; i < timeSpend.bonuses.length; i++) {
          if (timeSpend.bonuses[i].eTypeBonusSource == eTypeBonusSource) check = true;
        }
      },
    );

    return check;
  }

  resetDay() {
    return state.whenOrNull(loaded: (timeSpend) {
      int commuting = getBonus(ETypeBonus.commuting);

      TimeSpend refresh = timeSpend.copyWith(
        used: 0,
        free: 24 -
            timeSpend.learn -
            timeSpend.work -
            timeSpend.relax -
            timeSpend.sleep -
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
