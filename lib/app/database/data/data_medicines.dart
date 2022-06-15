import 'package:life_simulator/app/medicines/models/medicine_model.dart';
import 'package:uuid/uuid.dart';

class DataMedicines {
  static List<Medicine> db() {
    var uuid = Uuid();
    return [
      Medicine(
        id: uuid.v1(),
        name: 'Medicine',
        cost: 100,
        satisfaction: 0,
        health: 0.01,
        tiredness: 0,
        duration: 3,
        leftDuration: 3,
      ),
      Medicine(
        id: uuid.v1(),
        name: 'Medicine',
        cost: 200,
        satisfaction: 0,
        health: 0.01,
        tiredness: 0,
        duration: 7,
        leftDuration: 7,
      ),
    ];
  }
}
