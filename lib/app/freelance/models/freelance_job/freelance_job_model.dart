import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:life_simulator/app/freelance/models/freelance_base/freelance_base.dart';
import 'package:life_simulator/app/freelance/models/freelance_done/freelance_done_model.dart';

import '../../../skills/models/skill_model.dart';

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
    @Default(0) double fame,
    @Default(0) double price,
    required int level,
    //EndBase
    required int workTime,
    required int leftWorkTime,
    required List<Skill> reqSkills,
    required List<Skill> userSkills,
  }) = _FreelanceJob;

  factory FreelanceJob.fromJson(Map<String, dynamic> json) => _$FreelanceJobFromJson(json);

  int _generateRating() {
    int skills = 0;
    int rating = 0;
    for (var r in reqSkills) {
      Skill skill = userSkills.firstWhere((u) => r.name == u.name);
      skills += skill.lvl;
    }

    var rng = Random();
    if (skills <= (2 / reqSkills.length)) {
      if (rng.nextInt(100) >= 90) {
        rating = 1;
      } else {
        rating = 2;
      }
    }
    if (skills >= (3 / reqSkills.length) && skills <= (4 / reqSkills.length)) {
      if (rng.nextInt(100) >= 50) {
        rating = 1;
      } else {
        rating = 2;
      }
    }
    if (skills >= (5 / reqSkills.length) && skills <= (6 / reqSkills.length)) {
      if (rng.nextInt(100) >= 50) {
        rating = 2;
      } else {
        rating = 3;
      }
    }
    if (skills >= (7 / reqSkills.length) && skills <= (8 / reqSkills.length)) {
      if (rng.nextInt(100) >= 50) {
        rating = 3;
      } else {
        rating = 4;
      }
    }
    if (skills >= (9 / reqSkills.length)) {
      if (rng.nextInt(100) >= 50) {
        rating = 4;
      } else {
        rating = 5;
      }
    }

    return rating;
  }

  double getFameMultiplier() {
    double v = fame == 0 ? 10 : fame;

    for (var r in reqSkills) {
      for (var u in userSkills) {
        if (r.name == u.name) v *= u.lvl;
      }
    }
    return v;
  }

  FreelanceDone toDone(DateTime d) {
    double price;
    int rating = _generateRating();
    double fame = 10;

    switch (eTypeFreelance) {
      case ETypeFreelance.book:
        price = 5;
        break;
      case ETypeFreelance.course:
        price = 10;
        break;
      case ETypeFreelance.youtube:
        price = 0.5;
        break;
      case ETypeFreelance.application:
        price = 10;
        break;
    }

    return FreelanceDone(
      id: id,
      name: name,
      eTypeFreelance: eTypeFreelance,
      fame: fame * rating * level,
      price: price * rating,
      dateCre: d,
      rating: _generateRating(),
      level: level,
    );
  }
}
