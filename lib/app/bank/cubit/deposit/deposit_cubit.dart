import 'dart:async';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../new_game/new_game_cubit.dart';

@lazySingleton
class DepositCubit extends HydratedCubit<double> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  DepositCubit(
    this._newGameCubit,
  ) : super(0) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
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

  counting(DateTime dateTime) {
    if (dateTime == DateTime(18, 1, 1)) return;
    double result = state + (state * (0.12 / 360));
    emit(result);
  }

  @override
  double? fromJson(Map<String, dynamic> json) => json['value'] as double;

  @override
  Map<String, dynamic>? toJson(double state) => {'value': state};
}
