import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../money/cubit/money_cubit.dart';
import '../../new_game/new_game_cubit.dart';
import '../../stats/cubit/stats_cubit.dart';

part 'rules_cubit.freezed.dart';
part 'rules_cubit.g.dart';
part 'rules_state.dart';

@lazySingleton
class RulesCubit extends Cubit<RulesState> {
  final MoneyCubit _moneyCubit;
  late StreamSubscription _moneySub;

  final StatsCubit _statsCubit;
  late StreamSubscription _statsSub;

  final NewGameCubit _newGameCubit;

  RulesCubit({
    required MoneyCubit moneyCubit,
    required StatsCubit statsCubit,
    required NewGameCubit saveCubit,
  })  : _moneyCubit = moneyCubit,
        _statsCubit = statsCubit,
        _newGameCubit = saveCubit,
        super(RulesState.loaded(false)) {
    _listen();
  }

  @override
  Future<void> close() async {
    _moneySub.cancel();
    _statsSub.cancel();
    super.close();
  }

  _listen() {
    _statsSub = _statsCubit.stream.listen((state) {
      state.whenOrNull(loaded: (stats) {
        if (stats.health <= 0) {
          _newGameCubit.change(false);
          emit(RulesState.loaded(true));
          emit(RulesState.loaded(false));
        }
      });
    });

    _moneySub = _moneyCubit.stream.listen((money) {
      if (money < -5000) {
        _newGameCubit.change(false);
        emit(RulesState.loaded(true));
        emit(RulesState.loaded(false));
      }
    });
  }
}
