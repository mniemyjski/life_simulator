import 'package:life_simulator/app/medicines/models/medicine_model.dart';
import 'package:uuid/uuid.dart';

class DataMedicines {
  static List<Medicine> db() {
    var uuid = Uuid();
    return [
      Medicine(
        id: uuid.v1(),
        name: 'Medicine 1',
        cost: 50,
        satisfaction: 0,
        health: 0.01,
        tiredness: 0,
        duration: 3,
        leftDuration: 3,
      ),
      Medicine(
        id: uuid.v1(),
        name: 'Medicine 2',
        cost: 100,
        satisfaction: 0,
        health: 0.02,
        tiredness: 0,
        duration: 3,
        leftDuration: 3,
      ),
      Medicine(
        id: uuid.v1(),
        name: 'Medicine 3',
        cost: 200,
        satisfaction: 0,
        health: 0.01,
        tiredness: 0,
        duration: 7,
        leftDuration: 7,
      ),
      Medicine(
        id: uuid.v1(),
        name: 'Medicine 4',
        cost: 400,
        satisfaction: 0,
        health: 0.02,
        tiredness: 0,
        duration: 14,
        leftDuration: 14,
      ),
      Medicine(
        id: uuid.v1(),
        name: 'Medicine 5',
        cost: 600,
        satisfaction: 0,
        health: 0.01,
        tiredness: 0,
        duration: 30,
        leftDuration: 30,
      ),
      Medicine(
        id: uuid.v1(),
        name: 'Medicine 6',
        cost: 1200,
        satisfaction: 0,
        health: 0.02,
        tiredness: 0,
        duration: 30,
        leftDuration: 30,
      ),
    ];
  }
}
