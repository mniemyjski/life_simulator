import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:richeable/app/business/models/research/research_model.dart';

import '../../../new_game/new_game_cubit.dart';

part 'research_product_cubit.freezed.dart';
part 'research_product_cubit.g.dart';
part 'research_product_state.dart';

@lazySingleton
class ResearchProductCubit extends HydratedCubit<ResearchProductState> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;
  ResearchProductCubit(this._newGameCubit) : super(const ResearchProductState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(const ResearchProductState.initial());
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(const ResearchProductState.initial());
    });
  }

  counting() {
    state.whenOrNull(loaded: (research) {});
  }

  String? add(Research research) {
    return state.maybeWhen(
        orElse: () => 'researchInProgress',
        initial: () {
          emit(ResearchProductState.loaded(research));
          return null;
        });
  }

  remove(Research research) {
    emit(const ResearchProductState.initial());
  }

  @override
  fromJson(Map<String, dynamic> json) {
    return ResearchProductState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(state) {
    return state.toJson();
  }
}
