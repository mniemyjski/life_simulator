import 'dart:async';

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../new_game/new_game_cubit.dart';
import '../models/skills_model.dart';

part 'skills_cubit.freezed.dart';
part 'skills_cubit.g.dart';
part 'skills_state.dart';

@lazySingleton
class SkillsCubit extends HydratedCubit<SkillsState> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  SkillsCubit({
    required NewGameCubit newGameCubit,
  })  : _newGameCubit = newGameCubit,
        super(SkillsState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(SkillsState.loaded([]));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(SkillsState.loaded([]));
    });
  }

  init(bool newGame) {
    state.whenOrNull(
      initial: () => emit(SkillsState.loaded([])),
      loaded: (data) {
        if (!newGame) emit(SkillsState.loaded([]));
      },
    );
  }

  update(Skill skill) {
    state.maybeWhen(
        orElse: () => 'error',
        loaded: (skills) {
          Skill? _skill = skills.firstWhereOrNull((element) => element.name == skill.name);

          if (_skill == null) emit(SkillsState.loaded(List.from(skills)..add(skill)));

          for (var i = 0; i < skills.length; i++) {
            Skill element = skills[i];

            if (element.name == skill.name) {
              List<Skill> _result = List.from(skills);
              _result[i] = element.copyWith(exp: element.exp + skill.exp);
              emit(SkillsState.loaded(_result));
            }
          }
        });
  }

  @override
  SkillsState? fromJson(Map<String, dynamic> json) {
    return SkillsState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(SkillsState state) {
    return state.toJson();
  }
}
