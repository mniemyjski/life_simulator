import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

import '../skill/skill_model.dart';

part 'skill_emb_model.g.dart';

@JsonSerializable()
@embedded
class SkillEmb {
  @enumerated
  final ETypeSkills name;
  final int lvl;

  SkillEmb({this.name = ETypeSkills.programming, this.lvl = 0});

  factory SkillEmb.fromJson(Map<String, dynamic> json) => _$SkillEmbFromJson(json);
  Map<String, dynamic> toJson() => _$SkillEmbToJson(this);
}
