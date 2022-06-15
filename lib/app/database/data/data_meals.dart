import 'package:life_simulator/app/personality/models/meal/meal_model.dart';
import 'package:uuid/uuid.dart';

class DataMeals {
  static List<Meal> db() {
    var uuid = Uuid();
    return [
      Meal(
        id: uuid.v1(),
        name: 'food 1',
        cost: 10,
        bonusToRelax: -1,
        bonusToSleep: -1,
      ),
      Meal(
        id: uuid.v1(),
        name: 'food 2',
        cost: 20,
      ),
      Meal(
        id: uuid.v1(),
        name: 'food 3',
        cost: 40,
        bonusToRelax: 1,
      ),
      Meal(
        id: uuid.v1(),
        name: 'food 4',
        cost: 80,
        bonusToRelax: 1,
        bonusToSleep: 1,
      ),
      Meal(
        id: uuid.v1(),
        name: 'food 5',
        cost: 150,
        bonusToRelax: 2,
        bonusToSleep: 1,
      ),
    ];
  }
}
