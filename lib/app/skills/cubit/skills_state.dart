part of 'skills_cubit.dart';

@freezed
class SkillsState with _$SkillsState {
  const factory SkillsState.initial() = Initial;
  const factory SkillsState.loading() = Loading;
  const factory SkillsState.loaded(List<Skill> skills) = Loaded;

  factory SkillsState.fromJson(Map<String, dynamic> json) => _$SkillsStateFromJson(json);
}
