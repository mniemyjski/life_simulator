import 'package:uuid/uuid.dart';

import '../../personality/models/food/food_model.dart';

class DataFoods {
  static List<Food> db() {
    var uuid = const Uuid();
    return [
      Food(
        id: uuid.v1(),
        name: 'foods 1',
        cost: -5,
        bonusToRelax: -1,
      ),
      Food(
        id: uuid.v1(),
        name: 'foods 2',
        cost: -10,
      ),
      Food(
        id: uuid.v1(),
        name: 'foods 3',
        cost: -20,
        bonusToRelax: 1,
      ),
      Food(
        id: uuid.v1(),
        name: 'foods 4',
        cost: -50,
        bonusToRelax: 1,
        bonusToSleep: 1,
      ),
      Food(
        id: uuid.v1(),
        name: 'foods 5',
        cost: -120,
        bonusToRelax: 2,
        bonusToSleep: 1,
      ),
    ];
  }
}
