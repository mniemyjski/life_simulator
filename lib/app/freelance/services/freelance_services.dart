import 'package:richeable/app/freelance/models/freelance_counting_model.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../skills/models/skill_model.dart';
import '../models/freelance_done/freelance_done_model.dart';
import '../models/freelance_job/freelance_job_model.dart';

abstract class FreelanceServices {
  static List<Skill> getList({required ETypeFreelance selected, required int lvl}) {
    switch (selected) {
      case ETypeFreelance.book:
        return [
          Skill(name: ETypeSkills.writing, lvl: lvl),
          Skill(name: ETypeSkills.creativity, lvl: lvl),
        ];
      case ETypeFreelance.course:
        return [
          Skill(name: ETypeSkills.communicativeness, lvl: lvl),
          Skill(name: ETypeSkills.confidence, lvl: lvl),
        ];
      case ETypeFreelance.youtube:
        return [
          Skill(name: ETypeSkills.communicativeness, lvl: lvl),
          Skill(name: ETypeSkills.confidence, lvl: lvl),
        ];
      case ETypeFreelance.application:
        return [
          Skill(name: ETypeSkills.programming, lvl: lvl),
        ];
      case ETypeFreelance.handicrafts:
        return [
          Skill(name: ETypeSkills.handyman, lvl: lvl),
          Skill(name: ETypeSkills.creativity, lvl: lvl),
        ];
    }
  }

  static int calcDuration({required ETypeFreelance typeJob, required int lvl}) {
    switch (typeJob) {
      case ETypeFreelance.book:
        return (120 * lvl).toInt();
      case ETypeFreelance.course:
        return (90 * lvl).toInt();
      case ETypeFreelance.youtube:
        return 60 ~/ lvl;
      case ETypeFreelance.application:
        return (240 * lvl).toInt();
      case ETypeFreelance.handicrafts:
        return (120 * lvl).toInt();
    }
  }

  static reduceFameAndCountingFameAndMoney(List<dynamic> args) {
    final DateTime date = args[0];
    final double fame = args[1];
    final List<FreelanceDone> freelances = args[2];

    if (freelances.isEmpty) return;

    double fame10 = fame / 30000;
    double addMoney = 0;
    double addFame = 0;

    List<FreelanceDone> result = [];

    for (var e in freelances) {
      DateTime next1 = e.next1;
      DateTime next2 = e.next2;
      DateTime next3 = e.next3;

      if (next1 == date.onlyDate()) {
        addMoney += (e.price / 2) * fame10;
        addFame += (e.fame / 2);
        result.add(e.copyWith(fame: e.fame / 2, price: e.price / 2));
        continue;
      }
      if (next2 == date.onlyDate()) {
        addMoney += (e.price / 2) * fame10;
        addFame += (e.fame / 2);
        result.add(e.copyWith(fame: e.fame / 2, price: e.price / 2));
        continue;
      }
      if (next3.millisecondsSinceEpoch > date.onlyDate().millisecondsSinceEpoch) {
        addMoney += e.price * fame10;
        addFame += e.fame;
        result.add(e);
        continue;
      }
    }

    return FreelanceCounting(freelances: result, addMoney: addMoney, addFame: addFame);
  }
}
