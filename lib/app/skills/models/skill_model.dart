import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

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

@CopyWith()
@JsonSerializable()
@Collection(ignore: {'props', 'stringify'})
@Name('Skills')
class Skill extends Equatable {
  final Id id;
  @enumerated
  final ETypeSkills name;
  final int lvl;
  final double exp;

  const Skill({
    this.id = Isar.autoIncrement,
    required this.name,
    this.lvl = 0,
    this.exp = 0,
  });

  @override
  List<Object> get props => [name, lvl, exp];

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
  Map<String, dynamic> toJson() => _$SkillToJson(this);
}
