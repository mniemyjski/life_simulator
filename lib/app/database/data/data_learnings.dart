import 'package:life_simulator/app/learning/models/learning_model.dart';

import '../../skills/models/skill_model.dart';

class DataLearnings {
  static List<Learning> db() {
    List<Learning> result = [];

    for (var element in ETypeSkills.values) {
      Learning learning = Learning(
        name: 'book',
        cost: -50,
        skillType: element,
        exp: 1000,
        time: 500,
        baseTime: 500,
      );
      result.add(learning);

      learning = Learning(
        name: 'OnlineCourse',
        cost: -300,
        skillType: element,
        exp: 1500,
        time: 500,
        baseTime: 500,
      );
      result.add(learning);

      learning = Learning(
        name: 'fullTimeCourse',
        cost: -5000,
        skillType: element,
        exp: 4000,
        time: 500,
        baseTime: 500,
      );
      result.add(learning);
    }

    return result;
  }
}
