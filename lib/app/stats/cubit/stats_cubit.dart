import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:life_simulator/app/event/models/game_event/game_event_model.dart';
import 'package:life_simulator/app/medicines/cubit/medicines_cubit.dart';

import '../../date/cubit/date_cubit.dart';
import '../../event/cubit/event_cubit.dart';
import '../../new_game/new_game_cubit.dart';
import '../../time_spend/cubit/time_spend_cubit.dart';
import '../../time_spend/models/time_bonus/time_bonus_model.dart';
import '../models/stats_model.dart';

part 'stats_cubit.freezed.dart';
part 'stats_cubit.g.dart';
part 'stats_state.dart';

@lazySingleton
class StatsCubit extends HydratedCubit<StatsState> {
  final NewGameCubit _newGameCubit;
  final TimeSpendCubit _timeSpendCubit;
  final EventCubit _eventCubit;
  final MedicinesCubit _medicinesCubit;

  late StreamSubscription _newGameSub;

  final DateCubit _dateCubit;
  late StreamSubscription _dateSub;

  StatsCubit(
    this._newGameCubit,
    this._timeSpendCubit,
    this._eventCubit,
    this._medicinesCubit,
    this._dateCubit,
  ) : super(const StatsState.initial()) {
    _newGame();
    _dateSub = _dateCubit.stream.listen((d) => d.whenOrNull(loaded: (date) => _counting(date)));
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    _dateSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) {
      emit(
        const StatsState.loaded(
          Stats(
            health: 1,
            satisfaction: 1,
            tiredness: 1,
            maxHealth: 1,
            maxSatisfaction: 1,
            maxTiredness: 1,
          ),
        ),
      );
    }
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) {
        emit(
          const StatsState.loaded(
            Stats(
              health: 1,
              satisfaction: 1,
              tiredness: 1,
              maxHealth: 1,
              maxSatisfaction: 1,
              maxTiredness: 1,
            ),
          ),
        );
      }
    });
  }

  _counting(DateTime date) {
    if (date == DateTime(18, 1, 1)) return;

    _timeSpendCubit.state.whenOrNull(loaded: (timeSpend) {
      state.whenOrNull(loaded: (s) {
        Stats stats = s;

        int relax = timeSpend.getBonus(ETypeBonus.relax) + timeSpend.relax;
        int sleep = timeSpend.getBonus(ETypeBonus.sleep) + timeSpend.sleep;
        double sick = 0;

        _eventCubit.state.whenOrNull(loaded: (events) {
          for (var element in events) {
            if (element.active && element.eTypeEffect == ETypeEffect.sick) sick -= element.value;
          }
        });

        _medicinesCubit.state.whenOrNull(loaded: (medicines) {
          for (var element in medicines) {
            if (element.active) sick += element.health;
          }
        });

        //Health
        if (stats.tiredness == 0) {
          stats = stats.copyWith(health: stats.health < 0 ? 0 : stats.health - 0.05);
        }
        if (sleep > 14) {
          stats = stats.copyWith(health: stats.health >= 1 ? 1 : stats.health + 0.01);
        }
        if (sick > 0) {
          stats = stats.copyWith(health: stats.health >= 1 ? 1 : stats.health + sick);
        }
        if (sick < 0) {
          stats = stats.copyWith(health: stats.health < 0 ? 0 : stats.health + sick);
        }
        //Tiredness
        if (sleep <= 0) {
          stats = stats.copyWith(
            tiredness: (stats.tiredness - 0.2) < 0 ? 0 : stats.tiredness - 0.2,
            satisfaction: (stats.satisfaction - 0.05) < 0 ? 0 : stats.satisfaction - 0.05,
          );
        }
        if (sleep > 0 && sleep < 4) {
          stats = stats.copyWith(
            tiredness: (stats.tiredness - 0.05) < 0 ? 0 : stats.tiredness - 0.05,
            satisfaction: (stats.satisfaction - 0.02) < 0 ? 0 : stats.satisfaction - 0.02,
          );
        }
        if (sleep > 4 && sleep < 7) {
          stats = stats.copyWith(
            tiredness: (stats.tiredness - 0.1) < 0 ? 0 : stats.tiredness - 0.01,
            satisfaction: (stats.satisfaction - 0.01) < 0 ? 0 : stats.satisfaction - 0.01,
          );
        }
        if (sleep > 7) {
          stats = stats.copyWith(
            tiredness: (stats.tiredness + (timeSpend.sleep / 100) > 1
                ? 1
                : stats.tiredness + (timeSpend.sleep / 100)),
          );
        }
        //Relax
        if (relax <= 0) {
          stats = stats.copyWith(
            satisfaction: (stats.satisfaction - 0.05) < 0 ? 0 : stats.satisfaction - 0.05,
          );
        }
        if (relax < 2) {
          stats = stats.copyWith(
            satisfaction: (stats.satisfaction - 0.01) < 0 ? 0 : stats.satisfaction - 0.01,
          );
        }
        if (relax > 2) {
          stats = stats.copyWith(
            satisfaction: (stats.satisfaction + (timeSpend.relax / 100)) > 1
                ? 1
                : stats.satisfaction + (timeSpend.relax / 100),
          );
        }

        emit(StatsState.loaded(stats));
      });
    });
  }

  @override
  StatsState? fromJson(Map<String, dynamic> json) {
    return StatsState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(StatsState state) {
    return state.toJson();
  }
}
