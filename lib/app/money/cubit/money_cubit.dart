import 'dart:async';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../new_game/new_game_cubit.dart';

@lazySingleton
class MoneyCubit extends HydratedCubit<double> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  MoneyCubit(
    this._newGameCubit,
  ) : super(5000) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(500000000);
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(500000000);
    });
  }

  change(double money) {
    double refresh = state + money;
    emit(refresh);
  }

  @override
  double? fromJson(Map<String, dynamic> json) => json['value'] as double;

  @override
  Map<String, dynamic>? toJson(double state) => {'value': state};
}
