import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:life_simulator/app/time_spend/cubit/time_spend_cubit.dart';

import '../../save/save_cubit.dart';
import '../models/stats_model.dart';

part 'stats_cubit.freezed.dart';
part 'stats_cubit.g.dart';
part 'stats_state.dart';

@lazySingleton
class StatsCubit extends HydratedCubit<StatsState> {
  final SaveCubit _saveCubit;
  final TimeSpendCubit _timeSpendCubit;
  late StreamSubscription _save;

  StatsCubit({
    required TimeSpendCubit timeSpend,
    required SaveCubit saveCubit,
  })  : _timeSpendCubit = timeSpend,
        _saveCubit = saveCubit,
        super(StatsState.initial(null)) {
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
            ? emit(StatsState.loaded(Stats(health: 1, satisfaction: 1, tiredness: 1)))
            : emit(StatsState.loaded(data));
      },
      loaded: (data) {
        !newGame
            ? emit(StatsState.loaded(Stats(health: 1, satisfaction: 1, tiredness: 1)))
            : emit(StatsState.loaded(data));
      },
    );
  }

  counting(int year) {
    _timeSpendCubit.state.whenOrNull(loaded: (timeSpend) {
      state.whenOrNull(loaded: (stats) {
        Stats _stats = stats;

        //Health
        if (_stats.tiredness == 0) {
          _stats = _stats.copyWith(health: _stats.health < 0 ? 0 : _stats.health - 0.05);
        }
        if (timeSpend.sleep > 14) {
          _stats = _stats.copyWith(health: _stats.health > 1 ? 1 : _stats.health + 0.05);
        }
        //Tiredness
        if (timeSpend.sleep == 0) {
          _stats = _stats.copyWith(
            tiredness: (_stats.tiredness - 0.2) < 0 ? 0 : _stats.tiredness - 0.2,
            satisfaction: (_stats.satisfaction - 0.05) < 0 ? 0 : _stats.satisfaction - 0.05,
          );
        }
        if (timeSpend.sleep > 0 && timeSpend.sleep < 4) {
          _stats = _stats.copyWith(
            tiredness: (_stats.tiredness - 0.05) < 0 ? 0 : _stats.tiredness - 0.05,
            satisfaction: (_stats.satisfaction - 0.02) < 0 ? 0 : _stats.satisfaction - 0.02,
          );
        }
        if (timeSpend.sleep > 4 && timeSpend.sleep < 7) {
          _stats = _stats.copyWith(
            tiredness: (_stats.tiredness - 0.1) < 0 ? 0 : _stats.tiredness - 0.01,
            satisfaction: (_stats.satisfaction - 0.01) < 0 ? 0 : _stats.satisfaction - 0.01,
          );
        }
        if (timeSpend.sleep > 7) {
          _stats = _stats.copyWith(
            tiredness: (_stats.tiredness + (timeSpend.sleep / 100) > 1
                ? 1
                : _stats.tiredness + (timeSpend.sleep / 100)),
          );
        }
        //Relax
        if (timeSpend.relax == 0) {
          _stats = _stats.copyWith(
            satisfaction: (_stats.satisfaction - 0.05) < 0 ? 0 : _stats.satisfaction - 0.05,
          );
        }
        if (timeSpend.relax < 2) {
          _stats = _stats.copyWith(
            satisfaction: (_stats.satisfaction - 0.01) < 0 ? 0 : _stats.satisfaction - 0.01,
          );
        }
        if (timeSpend.relax > 2) {
          _stats = _stats.copyWith(
            satisfaction: (_stats.satisfaction + (timeSpend.relax / 100)) > 1
                ? 1
                : _stats.satisfaction + (timeSpend.relax / 100),
          );
        }

        emit(StatsState.loaded(_stats));
      });
    });
  }

  @override
  StatsState? fromJson(Map<String, dynamic> json) {
    return StatsState.loaded(Stats.fromJson(json));
  }

  @override
  Map<String, dynamic>? toJson(StatsState state) {
    return state.whenOrNull(loaded: (date) => date.toJson());
  }
}
