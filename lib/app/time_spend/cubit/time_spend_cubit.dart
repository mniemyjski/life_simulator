import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../save/save_cubit.dart';
import '../models/time_spend_model.dart';

part 'time_spend_cubit.freezed.dart';
part 'time_spend_cubit.g.dart';
part 'time_spend_state.dart';

@lazySingleton
class TimeSpendCubit extends HydratedCubit<TimeSpendState> {
  final SaveCubit _saveCubit;
  late StreamSubscription _save;

  TimeSpendCubit({
    required SaveCubit saveCubit,
  })  : _saveCubit = saveCubit,
        super(TimeSpendState.initial(null)) {
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
        !newGame || data == null
            ? emit(TimeSpendState.loaded(
                TimeSpend(
                  free: 14,
                  work: 0,
                  learn: 0,
                  relax: 2,
                  sleep: 8,
                  used: 0,
                ),
              ))
            : emit(TimeSpendState.loaded(data));
      },
      loaded: (data) {
        !newGame
            ? emit(TimeSpendState.loaded(
                TimeSpend(
                  free: 14,
                  work: 0,
                  learn: 0,
                  relax: 2,
                  sleep: 8,
                  used: 0,
                ),
              ))
            : emit(TimeSpendState.loaded(data));
      },
    );
  }

  String? changeWork(int hours) {
    var result = state.whenOrNull(loaded: (timeSpend) {
      if (timeSpend.free >= hours) {
        TimeSpend refresh = timeSpend.copyWith(
          work: timeSpend.work + hours,
          free: timeSpend.free - hours,
        );
        emit(TimeSpendState.loaded(refresh));
      } else {
        return "You don't have free time";
      }
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

  resetDay() {
    return state.whenOrNull(loaded: (timeSpend) {
      TimeSpend refresh = timeSpend.copyWith(
        used: 0,
        free: 24 - timeSpend.learn - timeSpend.work - timeSpend.relax - timeSpend.sleep,
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
