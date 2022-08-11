import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../database/cubit/database_cubit.dart';
import '../../../new_game/new_game_cubit.dart';
import '../../models/freelance_work/freelance_work_model.dart';

part 'freelance_work_cubit.freezed.dart';
part 'freelance_work_cubit.g.dart';
part 'freelance_work_state.dart';

class FreelanceWorkCubit extends Cubit<FreelanceWorkState> {
  final NewGameCubit _newGameCubit;
  final DatabaseCubit _databaseCubit;
  late StreamSubscription _newGameSub;

  FreelanceWorkCubit(
    this._newGameCubit,
    this._databaseCubit,
  ) : super(const FreelanceWorkState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(const FreelanceWorkState.loaded([]));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(const FreelanceWorkState.loaded([]));
    });
  }

  _counting() {}

  add(FreelanceWork freelanceWork) {
    state.maybeWhen(
        orElse: () => 'error',
        loaded: (list) {
          emit(FreelanceWorkState.loaded(List.from(list)..add(freelanceWork)));
        });
  }

  remove(String id) {
    state.maybeWhen(
        orElse: () => 'error',
        loaded: (list) {
          emit(FreelanceWorkState.loaded(List.from(list)..removeWhere((e) => e.id == id)));
        });
  }
}
