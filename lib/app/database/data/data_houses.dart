import 'package:life_simulator/app/personality/models/house/house_model.dart';
import 'package:uuid/uuid.dart';

class DataHouses {
  static List<House> db() {
    var uuid = Uuid();
    return [
      House(
        id: uuid.v1(),
        name: 'House 1',
        eTypeHouse: ETypeHouse.rent,
        cost: 500,
        monthlyCost: 500,
        bonusToRelax: -1,
        bonusToSleep: -1,
      ),
      House(
        id: uuid.v1(),
        name: 'House 2',
        eTypeHouse: ETypeHouse.rent,
        cost: 1200,
        monthlyCost: 1200,
        bonusToRelax: 0,
        bonusToSleep: 0,
      ),
      House(
        id: uuid.v1(),
        name: 'House 3',
        eTypeHouse: ETypeHouse.rent,
        cost: 1800,
        monthlyCost: 1800,
        bonusToRelax: 1,
        bonusToSleep: 0,
      ),
      House(
        id: uuid.v1(),
        name: 'House 4',
        eTypeHouse: ETypeHouse.buy,
        cost: 60000,
        monthlyCost: 100,
        bonusToRelax: 0,
        bonusToSleep: 0,
      ),
      House(
        id: uuid.v1(),
        name: 'House 5',
        eTypeHouse: ETypeHouse.buy,
        cost: 160000,
        monthlyCost: 200,
        bonusToRelax: 1,
        bonusToSleep: 0,
      ),
      House(
        id: uuid.v1(),
        name: 'House 6',
        eTypeHouse: ETypeHouse.buy,
        cost: 260000,
        monthlyCost: 400,
        bonusToRelax: 1,
        bonusToSleep: 1,
      ),
    ];
  }
}
