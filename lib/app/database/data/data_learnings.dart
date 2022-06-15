import 'package:life_simulator/app/learning/models/learning_model.dart';
import 'package:uuid/uuid.dart';

import '../../skills/models/skills_model.dart';

class DataLearnings {
  static List<Learning> db() {
    var uuid = Uuid();
    return [
      Learning(
          id: uuid.v1(),
          name: 'Książka programowania',
          cost: 100,
          skills: [
            Skill(
              name: ETypeSkills.programming,
              exp: 1,
            ),
          ],
          time: 1800),
      Learning(
          id: uuid.v1(),
          name: 'Książka programowania',
          cost: 500,
          skills: [
            Skill(
              name: ETypeSkills.programming,
              exp: 1,
            ),
          ],
          time: 1800),
      Learning(
          id: uuid.v1(),
          name: 'Kurs programowania',
          cost: 5000,
          skills: [
            Skill(
              name: ETypeSkills.programming,
              exp: 1,
            ),
          ],
          time: 900),
    ];
  }
}
