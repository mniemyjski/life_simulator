import 'dart:async';

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../models/skill_model.dart';
import '../repositories/skills_repository.dart';

part 'skills_cubit.freezed.dart';
part 'skills_cubit.g.dart';
part 'skills_state.dart';

@lazySingleton
class SkillsCubit extends HydratedCubit<SkillsState> {
  late StreamSubscription _skillsSub;
  final SkillsRepository _skillsRepository;

  SkillsCubit(this._skillsRepository) : super(const SkillsState.initial()) {
    state.maybeWhen(orElse: () async {
      List<Skill> result = await _skillsRepository.getAllSkills();
      emit(SkillsState.loaded(result));
    });

    _skillsSub = _skillsRepository.watchSkills().listen((event) async {
      List<Skill> result = await _skillsRepository.getAllSkills();
      emit(SkillsState.loaded(result));
    });
  }

  @override
  Future<void> close() async {
    _skillsSub.cancel();
    super.close();
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
