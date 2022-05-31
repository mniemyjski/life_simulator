import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../utilities/utilities.dart';
import '../../save/save_cubit.dart';
import '../models/bonus/bonus_model.dart';
import '../models/time_spend_model/time_spend_model.dart';

part 'time_spend_cubit.freezed.dart';
part 'time_spend_cubit.g.dart';
part 'time_spend_state.dart';

@lazySingleton
class TimeSpendCubit extends HydratedCubit<TimeSpendState> {
  final SaveCubit _saveCubit;
  late StreamSubscription _saveSub;
  late StreamSubscription _transportSub;

  TimeSpendCubit({
    required SaveCubit saveCubit,
  })  : _saveCubit = saveCubit,
        super(TimeSpendState.initial(null)) {
    _saveCubit.state.whenOrNull(loaded: (save) => init(save));
    _saveSub = _saveCubit.stream.listen((s) => s.whenOrNull(loaded: (save) => init(save)));
  }

  @override
  Future<void> close() async {
    _saveSub.cancel();
    _transportSub.cancel();
    super.close();
  }

  init(bool newGame) {
    _newGame() => emit(
          TimeSpendState.loaded(
            TimeSpend(
              free: 14,
              work: 0,
              commuting: 0,
              learn: 0,
              relax: 2,
              sleep: 8,
              used: 0,
              bonuses: [],
            ),
          ),
        );

    _loadGame(TimeSpend timeSpend) => emit(TimeSpendState.loaded(timeSpend));

    state.whenOrNull(
      initial: (timeSpend) {
        !newGame || timeSpend == null ? _newGame() : _loadGame(timeSpend);
      },
      loaded: (timeSpend) {
        !newGame ? _newGame() : _loadGame(timeSpend);
      },
    );
  }

  bool checkFreeTime(int value) {
    return state.maybeWhen(
      orElse: () => false,
      loaded: (timeSpend) => timeSpend.free >= value ? true : false,
    );
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

  int getBonus(ETypeBonus eTypeBonus) {
    return state.maybeWhen(
        loaded: (timeSpend) {
          int bonus = 0;
          timeSpend.bonuses
            ..forEach((element) {
              if (element.eTypeBonus == eTypeBonus) bonus += element.value;
            });

          if (ETypeBonus.commuting == eTypeBonus) {
            return timeSpend.commuting < bonus ? timeSpend.commuting : bonus;
          } else {
            return bonus;
          }
        },
        orElse: () => 0);
  }

  resetDay() {
    return state.whenOrNull(loaded: (timeSpend) {
      int _commuting = getBonus(ETypeBonus.commuting);

      Logger().wtf(_commuting);

      TimeSpend refresh = timeSpend.copyWith(
        used: 0,
        free: 24 -
            timeSpend.learn -
            timeSpend.work -
            timeSpend.relax -
            timeSpend.sleep -
            (timeSpend.commuting - _commuting),
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
