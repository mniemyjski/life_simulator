import 'dart:async';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../date/cubit/date_cubit.dart';
import '../../../date/models/date_game_model.dart';
import '../../../new_game/new_game_cubit.dart';

@lazySingleton
class DepositCubit extends HydratedCubit<double> {
  final DateCubit _dateCubit;
  late StreamSubscription _dateSub;

  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  DepositCubit({
    required DateCubit dateCubit,
    required NewGameCubit newGameCubit,
  })  : _dateCubit = dateCubit,
        _newGameCubit = newGameCubit,
        super(0) {
    _newGame();
    _counting();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    _dateSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(0);
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(0);
    });
  }

  change(double value) {
    emit(state + value);
  }

  _counting() {
    _newGameSub = _dateCubit.stream.listen((event) {
      event.whenOrNull(loaded: (date) {
        if (date == DateGame(year: 18, month: 1, day: 1)) return;
        double result = state + (state * (0.12 / 360));
        emit(result);
      });
    });
  }

  @override
  double? fromJson(Map<String, dynamic> json) => json['value'] as double;

  @override
  Map<String, dynamic>? toJson(double state) => {'value': state};
}
