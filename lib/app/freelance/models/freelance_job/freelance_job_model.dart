import 'dart:math';

import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../skills/models/skill_emb/skill_emb_model.dart';
import '../freelance_done/freelance_done_model.dart';

part 'freelance_job_model.g.dart';

enum ETypeFreelance {
  book,
  course,
  youtube,
  application,
  handicrafts,
}

@CopyWith()
@JsonSerializable()
@Collection(ignore: {'props', 'stringify'})
class FreelanceJob extends Equatable {
  final Id id;
  final String uid;
  final String name;
  @enumerated
  final ETypeFreelance eTypeFreelance;
  final int level;
  final int workTime;
  final int leftWorkTime;
  final List<SkillEmb> reqSkills;
  final List<SkillEmb> userSkills;
  final bool repeat;
  final int lastVersion;

  const FreelanceJob({
    this.id = Isar.autoIncrement,
    required this.uid,
    required this.name,
    required this.eTypeFreelance,
    required this.level,
    required this.workTime,
    required this.leftWorkTime,
    required this.reqSkills,
    required this.userSkills,
    this.repeat = false,
    this.lastVersion = 0,
  });

  static FreelanceJob builder({
    required String name,
    required ETypeFreelance eTypeFreelance,
    required int level,
    required int workTime,
    required List<SkillEmb> reqSkills,
    required List<SkillEmb> userSkills,
  }) {
    return FreelanceJob(
      uid: const Uuid().v1(),
      name: name,
      eTypeFreelance: eTypeFreelance,
      level: level,
      workTime: workTime,
      leftWorkTime: workTime,
      reqSkills: reqSkills,
      userSkills: userSkills,
    );
  }

  @override
  List<Object> get props => [
        uid,
        name,
        eTypeFreelance,
        level,
        workTime,
        leftWorkTime,
        reqSkills,
        userSkills,
        repeat,
        lastVersion,
      ];

  factory FreelanceJob.fromJson(Map<String, dynamic> json) => _$FreelanceJobFromJson(json);
  Map<String, dynamic> toJson() => _$FreelanceJobToJson(this);

  FreelanceJob repeater() {
    String newName = lastVersion > 0
        ? '${name.substring(0, name.length - lastVersion.toString().length)}${lastVersion + 1}'
        : '$name 1';

    return copyWith(
        name: newName, workTime: workTime, leftWorkTime: workTime, lastVersion: lastVersion + 1);
  }

  int _generateRating() {
    int skills = 0;
    int rating = 0;
    for (var r in reqSkills) {
      SkillEmb skill = userSkills.firstWhere((u) => r.name == u.name);
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
        price = 0.01;
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
      name: name,
      eTypeFreelance: eTypeFreelance,
      fame: fame * rating * level,
      price: price * rating,
      dateCre: d,
      rating: rating,
    );
  }
}
