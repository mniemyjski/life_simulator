import 'package:richeable/app/skills/models/skill/skill_model.dart';

abstract class SkillsData {
  static List<Skill> standard() => ETypeSkills.values.map((e) => Skill(name: e)).toList();
  static List<Skill> programmer() => ETypeSkills.values.map((e) {
        if (e == ETypeSkills.programming) {
          return Skill(name: e, lvl: 1, exp: 2000);
        } else if (e == ETypeSkills.communicativeness) {
          return Skill(name: e, lvl: 1, exp: 2000);
        } else if (e == ETypeSkills.confidence) {
          return Skill(name: e, lvl: 1, exp: 2000);
        } else {
          return Skill(name: e);
        }
      }).toList();
}
