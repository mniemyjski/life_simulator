import 'dart:async';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../date/cubit/date_cubit.dart';
import '../../../new_game/new_game_cubit.dart';

@lazySingleton
class DepositCubit extends HydratedCubit<double> {
  final DateCubit _dateCubit;
  late StreamSubscription _dateSub;

  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  DepositCubit(
    this._dateCubit,
    this._newGameCubit,
  ) : super(0) {
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
    _dateSub = _dateCubit.stream.listen((event) {
      event.whenOrNull(loaded: (date) {
        if (date == DateTime(18, 1, 1)) return;
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
