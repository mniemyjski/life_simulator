import 'package:life_simulator/app/learning/models/learning_model.dart';
import 'package:uuid/uuid.dart';

import '../../skills/models/skill_model.dart';

class DataLearnings {
  static List<Learning> db() {
    var uuid = Uuid();

    List<Learning> result = [];

    for (var element in ETypeSkills.values) {
      Learning learning = Learning(
        id: uuid.v1(),
        name: 'book',
        cost: 50,
        skillType: element,
        exp: 500,
        time: 3000,
        baseTime: 3000,
      );
      result.add(learning);

      learning = Learning(
        id: uuid.v1(),
        name: 'OnlineCourse',
        cost: 200,
        skillType: element,
        exp: 1500,
        time: 2500,
        baseTime: 2500,
      );
      result.add(learning);

      learning = Learning(
        id: uuid.v1(),
        name: 'fullTimeCourse',
        cost: 5000,
        skillType: element,
        exp: 5000,
        time: 2000,
        baseTime: 2000,
      );
      result.add(learning);
    }

    return result;
  }
}
