import 'package:uuid/uuid.dart';

import '../../event/models/game_event/game_event_model.dart';

class DataEvents {
  static List<GameEvent> db() {
    var uuid = const Uuid();
    return [
      GameEvent(
        id: uuid.v1(),
        name: 'You are sick',
        description: 'You are sick',
        eTypeEffect: ETypeEffect.sick,
        value: 0.02,
        duration: 3,
        leftDuration: 3,
        frequency: 400,
      ),
      GameEvent(
        id: uuid.v1(),
        name: 'You are sick',
        description: 'You are sick',
        eTypeEffect: ETypeEffect.sick,
        value: 0.02,
        duration: 7,
        leftDuration: 7,
        frequency: 400,
      ),
      GameEvent(
        id: uuid.v1(),
        name: 'You are sick',
        description: 'You are sick',
        eTypeEffect: ETypeEffect.sick,
        value: 0.02,
        duration: 14,
        leftDuration: 14,
        frequency: 600,
      ),
      GameEvent(
        id: uuid.v1(),
        name: 'You got the money',
        description: 'You got the money',
        eTypeEffect: ETypeEffect.addMoney,
        value: 2000,
        duration: 0,
        leftDuration: 0,
        frequency: 500,
        active: false,
      ),
      GameEvent(
        id: uuid.v1(),
        name: 'You lost money',
        description: 'You lost money',
        eTypeEffect: ETypeEffect.lostMoney,
        value: -2000,
        duration: 0,
        leftDuration: 0,
        frequency: 500,
        active: false,
      ),
      GameEvent(
        id: uuid.v1(),
        name: 'Unpaid taxes',
        description: 'Unpaid taxes',
        eTypeEffect: ETypeEffect.taxes,
        value: -0.1,
        duration: 0,
        leftDuration: 0,
        frequency: 800,
        active: false,
      ),
    ];
  }
}
