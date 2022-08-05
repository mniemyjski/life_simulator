import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../skills/models/skill_model.dart';

part 'freelance_job.freezed.dart';
part 'freelance_job.g.dart';

enum ETypeWork {
  book,
  course,
  youtube,
  application,
}

@freezed
class FreelanceJob with _$FreelanceJob {
  const factory FreelanceJob({
    required String id,
    required String name,
    required ETypeWork eTypeWork,
    required int workTime,
    required int leftWorkTime,
    required List<Skill> reqSkills,
    required int fame,
    required int leftTime,
    required double price,
    required bool finished,
  }) = _FreelanceJob;

  factory FreelanceJob.fromJson(Map<String, dynamic> json) => _$FreelanceJobFromJson(json);
}
