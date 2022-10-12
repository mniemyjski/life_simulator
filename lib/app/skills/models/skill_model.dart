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
  writing,
  creativity,
  handyman,
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
    List<double> progressList = getProgress();
    if ((lvl + 1) >= progressList.length) return 1;
    if (lvl == 0) return exp / progressList[lvl + 1];

    return (exp - progressList[lvl]) / (progressList[lvl + 1] - progressList[lvl]);
  }

  int getNewLevel(double newExp) {
    List<double> lvl = getProgress();
    for (var i = 0; i < lvl.length; i++) {
      if (newExp >= lvl.last) return lvl.length - 1;
      if (newExp >= lvl[i] && newExp < lvl[i + 1]) return i;
    }

    return 0;
  }

  static List<double> getProgress() {
    return [0, 2000, 5000, 8000, 12000, 24000, 36000, 42000, 52000, 72000, 82000];
  }

  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);
}
