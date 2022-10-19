import 'package:richeable/app/skills/models/skill_emb/skill_emb_model.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../skills/models/skill/skill_model.dart';
import '../models/freelance_done/freelance_done_model.dart';
import '../models/freelance_job/freelance_job_model.dart';

abstract class FreelanceServices {
  static List<SkillEmb> getList({required ETypeFreelance selected, required int lvl}) {
    switch (selected) {
      case ETypeFreelance.book:
        return [
          SkillEmb(name: ETypeSkills.writing, lvl: lvl),
          SkillEmb(name: ETypeSkills.creativity, lvl: lvl),
        ];
      case ETypeFreelance.course:
        return [
          SkillEmb(name: ETypeSkills.communicativeness, lvl: lvl),
          SkillEmb(name: ETypeSkills.confidence, lvl: lvl),
        ];
      case ETypeFreelance.youtube:
        return [
          SkillEmb(name: ETypeSkills.communicativeness, lvl: lvl),
          SkillEmb(name: ETypeSkills.confidence, lvl: lvl),
        ];
      case ETypeFreelance.application:
        return [
          SkillEmb(name: ETypeSkills.programming, lvl: lvl),
        ];
      case ETypeFreelance.handicrafts:
        return [
          SkillEmb(name: ETypeSkills.handyman, lvl: lvl),
          SkillEmb(name: ETypeSkills.creativity, lvl: lvl),
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

  static reduceFameAndCountingFameAndMoney({
    required DateTime date,
    required List<FreelanceDone> freelances,
  }) {
    if (freelances.isEmpty) return;
    List<FreelanceDone> result = [];

    for (var e in freelances) {
      DateTime next1 = e.next1;
      DateTime next2 = e.next2;
      DateTime next3 = e.next3;

      if (next1 == date.onlyDate()) {
        result.add(e.copyWith(fame: e.fame / 2, price: e.price / 2));
        continue;
      }
      if (next2 == date.onlyDate()) {
        result.add(e.copyWith(fame: e.fame / 2, price: e.price / 2));
        continue;
      }
      if (next3.millisecondsSinceEpoch > date.onlyDate().millisecondsSinceEpoch) {
        result.add(e);
        continue;
      }
    }
    return result;
  }

  static bool testReqSkill({required List<SkillEmb> reqSkill, required List<SkillEmb> userSkills}) {
    List<bool> test = [];
    for (var r in reqSkill) {
      for (var u in userSkills) {
        if (u.name == r.name && u.lvl >= r.lvl) test.add(true);
      }
    }

    return test.length == reqSkill.length ? true : false;
  }
}
