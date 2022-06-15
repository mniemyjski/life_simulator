import 'package:life_simulator/app/personality/models/transport/transport_model.dart';
import 'package:uuid/uuid.dart';

class DataTransports {
  static List<Transport> db() {
    var uuid = Uuid();
    return [
      Transport(
        id: uuid.v1(),
        name: 'Ticket',
        eTypeTransport: ETypeTransport.publicTransport,
        brand: 'Cities transport',
        cost: 50,
        monthlyCost: 50,
        commuting: 1,
        bonusToRelax: -1,
      ),
      Transport(
        id: uuid.v1(),
        name: 'Car 1',
        eTypeTransport: ETypeTransport.car,
        brand: 'Brand 1',
        cost: 2000,
        monthlyCost: 200,
        commuting: 2,
      ),
      Transport(
        id: uuid.v1(),
        name: 'Car 2',
        eTypeTransport: ETypeTransport.car,
        brand: 'Brand 1',
        cost: 5000,
        monthlyCost: 200,
        commuting: 2,
        bonusToRelax: 1,
      ),
    ];
  }
}
