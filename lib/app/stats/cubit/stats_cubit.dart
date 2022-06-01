import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:life_simulator/app/date/cubit/date_cubit.dart';
import 'package:life_simulator/app/date/models/date_game_model.dart';
import 'package:life_simulator/app/time_spend/cubit/time_spend_cubit.dart';

import '../../save/save_cubit.dart';
import '../../time_spend/models/bonus/bonus_model.dart';
import '../models/stats_model.dart';

part 'stats_cubit.freezed.dart';
part 'stats_cubit.g.dart';
part 'stats_state.dart';

@lazySingleton
class StatsCubit extends HydratedCubit<StatsState> {
  final SaveCubit _saveCubit;
  final TimeSpendCubit _timeSpendCubit;
  late StreamSubscription _save;

  final DateCubit _dateCubit;
  late StreamSubscription _dateSub;

  StatsCubit({
    required TimeSpendCubit timeSpend,
    required SaveCubit saveCubit,
    required DateCubit dateCubit,
  })  : _timeSpendCubit = timeSpend,
        _saveCubit = saveCubit,
        _dateCubit = dateCubit,
        super(StatsState.initial()) {
    _saveCubit.state.whenOrNull(loaded: (s) => init(s));
    _save = _saveCubit.stream.listen((s) => s.whenOrNull(loaded: (save) => init(save)));
    _dateSub = _dateCubit.stream.listen((d) => d.whenOrNull(loaded: (date) => _counting(date)));
  }

  @override
  Future<void> close() async {
    _save.cancel();
    _dateSub.cancel();
    super.close();
  }

  init(bool newGame) {
    StatsState _state = StatsState.loaded(Stats(
      health: 1,
      satisfaction: 1,
      tiredness: 1,
      maxHealth: 1,
      maxSatisfaction: 1,
      maxTiredness: 1,
    ));

    state.whenOrNull(
      initial: () => emit(_state),
      loaded: (stats) {
        if (!newGame) emit(_state);
      },
    );
  }

  _counting(DateGame dateGame) {
    if (dateGame == DateGame(year: 18, month: 1, day: 1)) return;

    _timeSpendCubit.state.whenOrNull(loaded: (timeSpend) {
      state.whenOrNull(loaded: (stats) {
        Stats _stats = stats;

        int relax = _timeSpendCubit.getBonus(ETypeBonus.relax) + timeSpend.relax;
        int sleep = _timeSpendCubit.getBonus(ETypeBonus.sleep) + timeSpend.sleep;
        bool hasHouse = _timeSpendCubit.checkBonusSource(ETypeBonusSource.house);

        //Health
        if (_stats.tiredness == 0) {
          _stats = _stats.copyWith(health: _stats.health < 0 ? 0 : _stats.health - 0.05);
        }
        if (sleep > 14) {
          _stats = _stats.copyWith(health: _stats.health > 1 ? 1 : _stats.health + 0.01);
        }
        //Tiredness
        if (sleep <= 0 || !hasHouse) {
          _stats = _stats.copyWith(
            tiredness: (_stats.tiredness - 0.2) < 0 ? 0 : _stats.tiredness - 0.2,
            satisfaction: (_stats.satisfaction - 0.05) < 0 ? 0 : _stats.satisfaction - 0.05,
          );
        }
        if (sleep > 0 && sleep < 4 && hasHouse) {
          _stats = _stats.copyWith(
            tiredness: (_stats.tiredness - 0.05) < 0 ? 0 : _stats.tiredness - 0.05,
            satisfaction: (_stats.satisfaction - 0.02) < 0 ? 0 : _stats.satisfaction - 0.02,
          );
        }
        if (sleep > 4 && sleep < 7 && hasHouse) {
          _stats = _stats.copyWith(
            tiredness: (_stats.tiredness - 0.1) < 0 ? 0 : _stats.tiredness - 0.01,
            satisfaction: (_stats.satisfaction - 0.01) < 0 ? 0 : _stats.satisfaction - 0.01,
          );
        }
        if (sleep > 7 && hasHouse) {
          _stats = _stats.copyWith(
            tiredness: (_stats.tiredness + (timeSpend.sleep / 100) > 1
                ? 1
                : _stats.tiredness + (timeSpend.sleep / 100)),
          );
        }
        //Relax
        if (relax <= 0 || !hasHouse) {
          _stats = _stats.copyWith(
            satisfaction: (_stats.satisfaction - 0.05) < 0 ? 0 : _stats.satisfaction - 0.05,
          );
        }
        if (relax < 2 && hasHouse) {
          _stats = _stats.copyWith(
            satisfaction: (_stats.satisfaction - 0.01) < 0 ? 0 : _stats.satisfaction - 0.01,
          );
        }
        if (relax > 2 && hasHouse) {
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
    return StatsState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(StatsState state) {
    return state.toJson();
  }
}
