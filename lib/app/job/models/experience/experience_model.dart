import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../skills/models/skills_model.dart';

part 'experience_model.freezed.dart';
part 'experience_model.g.dart';

@freezed
class Experience with _$Experience {
  const factory Experience({
    required int exp,
    required List<Skill> requirements,
    required int salary,
    required int interval,
    required int time,
  }) = _Experience;

  factory Experience.fromJson(Map<String, dynamic> json) => _$ExperienceFromJson(json);
}
