import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../money/models/income/income_model.dart';
import '../../../skills/models/skill_model.dart';

part 'experience_model.freezed.dart';
part 'experience_model.g.dart';

@freezed
class Experience with _$Experience {
  const factory Experience({
    required String id,
    required String name,
    required int exp,
    required List<Skill> requirements,
    required double salary,
    required ETypeFrequency eTypeFrequency,
    required int work,
    required int commuting,
    @Default(0) int bonusToRelax,
    @Default(0) int bonusToSleep,
    @Default(0) int bonusToLearn,
  }) = _Experience;

  factory Experience.fromJson(Map<String, dynamic> json) => _$ExperienceFromJson(json);
}
