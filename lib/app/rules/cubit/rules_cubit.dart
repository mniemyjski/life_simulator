import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../money/cubit/money_cubit.dart';
import '../../save/save_cubit.dart';
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

  final SaveCubit _saveCubit;
  late StreamSubscription _saveSub;

  RulesCubit({
    required MoneyCubit moneyCubit,
    required StatsCubit statsCubit,
    required SaveCubit saveCubit,
  })  : _moneyCubit = moneyCubit,
        _statsCubit = statsCubit,
        _saveCubit = saveCubit,
        super(RulesState.loaded(false)) {
    // _saveSub = _saveCubit.stream.listen((s) => s.whenOrNull(loaded: (save) => _init(save)));
    _listen();
  }

  // _init(bool newGame) {
  //   state.whenOrNull(
  //     initial: () => RulesState.loaded(false),
  //     loaded: (rule) {
  //       if (!newGame) RulesState.loaded(false);
  //     },
  //   );
  // }

  @override
  Future<void> close() async {
    _saveSub.cancel();
    _moneySub.cancel();
    _statsSub.cancel();
    super.close();
  }

  _listen() {
    _statsSub = _statsCubit.stream.listen((state) {
      state.whenOrNull(loaded: (stats) {
        if (stats.health <= 0) {
          _saveCubit.change(false);
          emit(RulesState.loaded(true));
          emit(RulesState.loaded(false));
        }
      });
    });

    _moneySub = _moneyCubit.stream.listen((money) {
      if (money < -5000) {
        _saveCubit.change(false);
        emit(RulesState.loaded(true));
        emit(RulesState.loaded(false));
      }
    });
  }
}
