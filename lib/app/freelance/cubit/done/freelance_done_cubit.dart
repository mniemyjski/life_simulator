import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../database/cubit/database_cubit.dart';
import '../../../new_game/new_game_cubit.dart';
import '../../models/freelance_done/freelance_done_model.dart';

part 'freelance_done_cubit.freezed.dart';
part 'freelance_done_cubit.g.dart';
part 'freelance_done_state.dart';

@lazySingleton
class FreelanceDoneCubit extends Cubit<FreelanceDoneState> {
  final NewGameCubit _newGameCubit;
  final DatabaseCubit _databaseCubit;
  late StreamSubscription _newGameSub;

  FreelanceDoneCubit(
    this._newGameCubit,
    this._databaseCubit,
  ) : super(const FreelanceDoneState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(const FreelanceDoneState.loaded([]));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(const FreelanceDoneState.loaded([]));
    });
  }

  counting() {}
  add() {}
  remove() {}
}
