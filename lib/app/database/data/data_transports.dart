import 'package:uuid/uuid.dart';

import '../../personality/models/transport/transport_model.dart';

class DataTransports {
  static List<Transport> db() {
    var uuid = const Uuid();
    return [
      Transport(
        uid: uuid.v1(),
        name: 'Ticket',
        eTypeTransport: ETypeTransport.publicTransport,
        brand: 'Cities transport',
        cost: -50,
        monthlyCost: -50,
        commuting: -1,
      ),
      Transport(
        uid: uuid.v1(),
        name: 'Car 1',
        eTypeTransport: ETypeTransport.car,
        brand: 'Brand 1',
        cost: -2000,
        monthlyCost: -200,
        commuting: -2,
        bonusToRelax: 0,
      ),
      Transport(
        uid: uuid.v1(),
        name: 'Car 2',
        eTypeTransport: ETypeTransport.car,
        brand: 'Brand 1',
        cost: -5000,
        monthlyCost: -200,
        commuting: -2,
        bonusToRelax: 1,
        bonusToSleep: 0,
      ),
      Transport(
        uid: uuid.v1(),
        name: 'Car 3',
        eTypeTransport: ETypeTransport.car,
        brand: 'Brand 1',
        cost: -10000,
        monthlyCost: -200,
        commuting: -2,
        bonusToRelax: 1,
        bonusToSleep: 1,
      ),
    ];
  }
}
