import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:richeable/app/skills/models/skill/skill_model.dart';
import 'package:richeable/constants/data/skills_data.dart';

import '../../../config/injectable/app_module.dart';
import '../../../config/injectable/injection.dart';

@lazySingleton
class SkillsRepository {
  late Isar _isar;

  SkillsRepository() {
    _isar = getIt<AppModule>().instance;
  }

  init() async {
    return await _isar.writeTxn(() async {
      await _isar.skills.putAll(SkillsData.standard());
    });
  }

  Future update({required ETypeSkills skill, required double exp}) async {
    return await _isar.writeTxn(() async {
      List<Skill> skills = await getAllSkills();

      for (var i = 0; i < skills.length; i++) {
        Skill element = skills[i];

        if (element.name == skill) {
          skills[i] =
              element.copyWith(exp: element.exp + exp, lvl: element.getNewLevel(element.exp + exp));
        }
      }

      await _isar.skills.putAll(skills);
    });
  }

  Future<List<Skill>> getAllSkills() async {
    return _isar.skills.where().findAll();
  }

  Stream watchSkills() {
    return _isar.skills.watchLazy();
  }
}
