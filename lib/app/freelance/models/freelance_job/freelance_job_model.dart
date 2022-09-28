import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:uuid/uuid.dart';

import '../../../skills/models/skill_model.dart';
import '../freelance_base/freelance_base.dart';
import '../freelance_done/freelance_done_model.dart';

part 'freelance_job_model.freezed.dart';
part 'freelance_job_model.g.dart';

@freezed
class FreelanceJob with _$FreelanceJob {
  const FreelanceJob._();

  @Implements<FreelanceBase>()
  const factory FreelanceJob({
    //Base
    required String id,
    required String name,
    required ETypeFreelance eTypeFreelance,
    //EndBase
    required int level,
    required int workTime,
    required int leftWorkTime,
    required List<Skill> reqSkills,
    required List<Skill> userSkills,
    @Default(false) bool repeat,
    @Default(0) int lastVersion,
  }) = _FreelanceJob;

  factory FreelanceJob.fromJson(Map<String, dynamic> json) => _$FreelanceJobFromJson(json);

  static FreelanceJob builder({
    required String name,
    required ETypeFreelance eTypeFreelance,
    required int level,
    required int workTime,
    required List<Skill> reqSkills,
    required List<Skill> userSkills,
  }) {
    return FreelanceJob(
      id: const Uuid().v1(),
      name: name,
      eTypeFreelance: eTypeFreelance,
      level: level,
      workTime: workTime,
      leftWorkTime: workTime,
      reqSkills: reqSkills,
      userSkills: userSkills,
    );
  }

  FreelanceJob repeater() {
    String newName = lastVersion > 0
        ? '${name.substring(0, name.length - lastVersion.toString().length)}${lastVersion + 1}'
        : '$name 1';

    return copyWith(
        id: const Uuid().v1(),
        name: newName,
        workTime: workTime,
        leftWorkTime: workTime,
        lastVersion: lastVersion + 1);
  }

  int _generateRating() {
    int skills = 0;
    int rating = 0;
    for (var r in reqSkills) {
      Skill skill = userSkills.firstWhere((u) => r.name == u.name);
      skills += skill.lvl;
    }

    var rng = Random();
    if (skills <= (2 * reqSkills.length)) {
      if (rng.nextInt(100) >= 25) {
        rating = 1;
      } else {
        rating = 2;
      }
    }
    if (skills >= (3 * reqSkills.length) && skills <= (4 * reqSkills.length)) {
      if (rng.nextInt(100) >= 50) {
        rating = 1;
      } else {
        rating = 2;
      }
    }
    if (skills >= (5 * reqSkills.length) && skills <= (6 * reqSkills.length)) {
      if (rng.nextInt(100) >= 50) {
        rating = 2;
      } else {
        rating = 3;
      }
    }
    if (skills >= (7 * reqSkills.length) && skills <= (8 * reqSkills.length)) {
      if (rng.nextInt(100) >= 50) {
        rating = 3;
      } else {
        rating = 4;
      }
    }
    if (skills >= (9 * reqSkills.length)) {
      if (rng.nextInt(100) >= 50) {
        rating = 4;
      } else {
        rating = 5;
      }
    }

    return rating;
  }

  FreelanceDone toDone(DateTime d) {
    double price;
    int rating = _generateRating();
    double fame;

    switch (eTypeFreelance) {
      case ETypeFreelance.book:
        price = 5;
        fame = 2;
        break;
      case ETypeFreelance.course:
        price = 5;
        fame = 2;
        break;
      case ETypeFreelance.youtube:
        price = 0.05;
        fame = 6;
        break;
      case ETypeFreelance.application:
        price = 5;
        fame = 2;
        break;
      case ETypeFreelance.handicrafts:
        price = 5;
        fame = 0.5;
        break;
    }

    return FreelanceDone(
      id: id,
      name: name,
      eTypeFreelance: eTypeFreelance,
      fame: fame * rating * level,
      price: price * rating,
      dateCre: d,
      rating: rating,
    );
  }
}
