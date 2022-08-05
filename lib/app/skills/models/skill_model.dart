import 'package:freezed_annotation/freezed_annotation.dart';

part 'skill_model.freezed.dart';
part 'skill_model.g.dart';

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
  const Skill._();
  const factory Skill({
    required ETypeSkills name,
    @Default(0) int lvl,
    @Default(0) double exp,
  }) = _Skill;

  double getPercentToNextLvl() {
    List<int> lvl = _getProgress();
    int level = getLevel();
    return exp / lvl[level];
  }

  int getLevel() {
    List<int> lvl = _getProgress();

    for (var i = 0; i < lvl.length; i++) {
      if (exp >= lvl[i]) return lvl[i] + 1;
    }

    return 0;
  }

  List<int> _getProgress() {
    return [1000, 2000, 4000, 8000, 16000, 32000, 64000, 128000, 256000, 512000];
  }

  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);
}
