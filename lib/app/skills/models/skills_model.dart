import 'package:freezed_annotation/freezed_annotation.dart';

part 'skills_model.freezed.dart';
part 'skills_model.g.dart';

enum ETypeSkills {
  programming,
  analytics,
  bookkeeping,
  business,
  management,
  confidence,
  communicativeness,
}

@freezed
class Skill with _$Skill {
  const factory Skill({
    required ETypeSkills name,
    required int exp,
  }) = _Skills;

  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);
}
