import 'package:richeable/app/skills/models/skill_model.dart';

abstract class SkillsData {
  static List<Skill> db() => ETypeSkills.values.map((e) => Skill(name: e)).toList();
}
