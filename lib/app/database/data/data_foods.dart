import 'package:uuid/uuid.dart';

import '../../personality/models/food/food_model.dart';

class DataFoods {
  static List<Food> db() {
    var uuid = const Uuid();
    return [
      Food(
        id: uuid.v1(),
        name: 'foods 1',
        cost: 10,
        bonusToRelax: -1,
        bonusToSleep: -1,
      ),
      Food(
        id: uuid.v1(),
        name: 'foods 2',
        cost: 20,
      ),
      Food(
        id: uuid.v1(),
        name: 'foods 3',
        cost: 40,
        bonusToRelax: 1,
      ),
      Food(
        id: uuid.v1(),
        name: 'foods 4',
        cost: 80,
        bonusToRelax: 1,
        bonusToSleep: 1,
      ),
      Food(
        id: uuid.v1(),
        name: 'foods 5',
        cost: 150,
        bonusToRelax: 2,
        bonusToSleep: 1,
      ),
    ];
  }
}
