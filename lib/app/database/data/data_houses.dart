import 'package:life_simulator/app/personality/models/house/house_model.dart';
import 'package:uuid/uuid.dart';

class DataHouses {
  static List<House> db() {
    var uuid = const Uuid();
    return [
      House(
        id: uuid.v1(),
        name: 'House 1',
        eTypeHouse: ETypeHouse.rent,
        cost: -350,
        monthlyCost: -350,
        bonusToSleep: -1,
      ),
      House(
        id: uuid.v1(),
        name: 'House 2',
        eTypeHouse: ETypeHouse.rent,
        cost: -800,
        monthlyCost: -800,
      ),
      House(
        id: uuid.v1(),
        name: 'House 3',
        eTypeHouse: ETypeHouse.rent,
        cost: -1400,
        monthlyCost: -1400,
        bonusToRelax: 1,
        bonusToSleep: 0,
      ),
      House(
        id: uuid.v1(),
        name: 'House 4',
        eTypeHouse: ETypeHouse.buy,
        cost: -60000,
        monthlyCost: -100,
        bonusToRelax: 0,
        bonusToSleep: 0,
      ),
      House(
        id: uuid.v1(),
        name: 'House 5',
        eTypeHouse: ETypeHouse.buy,
        cost: -160000,
        monthlyCost: -200,
        bonusToRelax: 1,
        bonusToSleep: 0,
      ),
      House(
        id: uuid.v1(),
        name: 'House 6',
        eTypeHouse: ETypeHouse.buy,
        cost: -260000,
        monthlyCost: -400,
        bonusToRelax: 1,
        bonusToSleep: 1,
      ),
    ];
  }
}
