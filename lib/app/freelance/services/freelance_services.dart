import 'package:richeable/app/freelance/models/freelance_counting_model.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../skills/models/skill_model.dart';
import '../models/freelance_base/freelance_base.dart';
import '../models/freelance_done/freelance_done_model.dart';

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
        return (8 * lvl).toInt();
        return 60 ~/ lvl;
      case ETypeFreelance.application:
        return (240 * lvl).toInt();
      case ETypeFreelance.handicrafts:
        return (120 * lvl).toInt();
    }
  }

  static reduceFameAndCountingFameAndMoney({
    required DateTime date,
    required double fame,
    required List<FreelanceDone> freelances,
  }) {
    double fame10 = fame / 30000;
    double addMoney = 0;
    double addFame = 0;

    List<FreelanceDone> result = [];

    for (var e in freelances) {
      DateTime next1 = e.dateCre.addDate(months: 6 * e.rating);
      DateTime next2 = e.dateCre.addDate(years: 1 * e.rating);
      DateTime next3 = e.dateCre.addDate(years: 2 * e.rating);

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
        addMoney += (e.price / 2) * fame10;
        addFame += (e.fame / 2);
        result.add(e);
        continue;
      }
    }

    return FreelanceCounting(freelances: result, addMoney: addMoney, addFame: addFame);
  }
}
