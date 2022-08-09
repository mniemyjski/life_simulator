import 'dart:async';

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../new_game/new_game_cubit.dart';
import '../models/skill_model.dart';

part 'skills_cubit.freezed.dart';
part 'skills_cubit.g.dart';
part 'skills_state.dart';

@lazySingleton
class SkillsCubit extends HydratedCubit<SkillsState> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  SkillsCubit(
    this._newGameCubit,
  ) : super(const SkillsState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    List<Skill> skills = [];
    for (var element in ETypeSkills.values) {
      skills.add(Skill(name: element));
    }

    if (_newGameCubit.state) emit(SkillsState.loaded(skills));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(SkillsState.loaded(skills));
    });
  }

  update({required ETypeSkills skill, required double exp}) {
    state.maybeWhen(
        orElse: () => 'error',
        loaded: (skills) {
          for (var i = 0; i < skills.length; i++) {
            Skill element = skills[i];

            if (element.name == skill) {
              List<Skill> result = List.from(skills);

              result[i] = element.copyWith(
                  exp: element.exp + exp, lvl: element.getNewLevel(element.exp + exp));
              emit(SkillsState.loaded(result));
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
