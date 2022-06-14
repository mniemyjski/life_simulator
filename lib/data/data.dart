import 'package:life_simulator/app/event/models/game_event/game_event_model.dart';
import 'package:life_simulator/app/medicines/models/medicine_model.dart';
import 'package:life_simulator/app/skills/models/skills_model.dart';
import 'package:uuid/uuid.dart';

import '../app/income/models/income_model.dart';
import '../app/job/models/experience/experience_model.dart';
import '../app/job/models/job/job_model.dart';
import '../app/learning/models/learning_model.dart';
import '../app/personality/models/house/house_model.dart';
import '../app/personality/models/meal/meal_model.dart';
import '../app/personality/models/transport/transport_model.dart';

class Data {
  //#region Jobs
  static List<Job> jobs() {
    var uuid = Uuid();

    return [
      Job(
        id: uuid.v1(),
        company: 'Call Center',
        industry: '?',
        experiences: [
          Experience(
            name: 'test 1',
            id: uuid.v1(),
            exp: 0,
            salary: 800,
            eTypeFrequency: ETypeFrequency.monthly,
            work: 8,
            commuting: 2,
            bonusToRelax: -1,
            bonusToSleep: -1,
            requirements: [],
          ),
          Experience(
            id: uuid.v1(),
            name: 'test 2',
            exp: 1,
            salary: 1200,
            eTypeFrequency: ETypeFrequency.monthly,
            work: 8,
            commuting: 2,
            bonusToRelax: -1,
            bonusToSleep: -1,
            requirements: [],
          ),
          Experience(
            id: uuid.v1(),
            name: 'test 3',
            exp: 2,
            salary: 2200,
            eTypeFrequency: ETypeFrequency.monthly,
            work: 8,
            commuting: 2,
            bonusToRelax: -1,
            bonusToSleep: -1,
            requirements: [],
          ),
        ],
      ),
      Job(
        id: uuid.v1(),
        company: 'Lidl',
        industry: 'Shop',
        experiences: [
          Experience(
            id: uuid.v1(),
            name: 'test 1',
            exp: 0,
            salary: 1000,
            eTypeFrequency: ETypeFrequency.monthly,
            work: 8,
            commuting: 2,
            bonusToRelax: -1,
            bonusToSleep: -1,
            requirements: [],
          ),
          Experience(
            id: uuid.v1(),
            name: 'test 2',
            exp: 1,
            salary: 1400,
            eTypeFrequency: ETypeFrequency.monthly,
            work: 8,
            commuting: 2,
            bonusToRelax: -1,
            bonusToSleep: -1,
            requirements: [],
          ),
          Experience(
            id: uuid.v1(),
            name: 'test 3',
            exp: 2,
            salary: 2400,
            eTypeFrequency: ETypeFrequency.monthly,
            work: 8,
            commuting: 2,
            bonusToRelax: -1,
            bonusToSleep: -1,
            requirements: [],
          ),
        ],
      ),
      Job(
        id: uuid.v1(),
        company: 'Miquide',
        industry: 'IT',
        experiences: [
          Experience(
            id: uuid.v1(),
            name: 'test 1',
            exp: 0,
            salary: 1000,
            eTypeFrequency: ETypeFrequency.monthly,
            work: 8,
            commuting: 2,
            requirements: [
              Skill(name: ETypeSkills.programming, exp: 1),
            ],
          ),
          Experience(
            id: uuid.v1(),
            name: 'test 1',
            exp: 1,
            salary: 2000,
            eTypeFrequency: ETypeFrequency.monthly,
            work: 8,
            commuting: 2,
            requirements: [
              Skill(name: ETypeSkills.programming, exp: 2),
            ],
          ),
          Experience(
            id: uuid.v1(),
            name: 'test 2',
            exp: 2,
            salary: 4000,
            eTypeFrequency: ETypeFrequency.monthly,
            work: 8,
            commuting: 0,
            requirements: [
              Skill(name: ETypeSkills.programming, exp: 3),
            ],
          ),
          Experience(
            id: uuid.v1(),
            name: 'test 3',
            exp: 3,
            salary: 6000,
            eTypeFrequency: ETypeFrequency.monthly,
            work: 8,
            commuting: 0,
            requirements: [
              Skill(name: ETypeSkills.programming, exp: 4),
            ],
          ),
          Experience(
            id: uuid.v1(),
            name: 'test 4',
            exp: 4,
            salary: 10000,
            eTypeFrequency: ETypeFrequency.monthly,
            work: 8,
            commuting: 0,
            requirements: [
              Skill(name: ETypeSkills.programming, exp: 5),
            ],
          ),
          Experience(
            id: uuid.v1(),
            name: 'test 5',
            exp: 5,
            salary: 28000,
            eTypeFrequency: ETypeFrequency.monthly,
            work: 8,
            commuting: 0,
            requirements: [
              Skill(name: ETypeSkills.programming, exp: 6),
            ],
          ),
        ],
      ),
    ];
  }
  //#endregion

  //#region Learnings
  static List<Learning> learnings() {
    var uuid = Uuid();
    return [
      Learning(
          id: uuid.v1(),
          name: 'Książka programowania',
          cost: 100,
          skills: [
            Skill(
              name: ETypeSkills.programming,
              exp: 1,
            ),
          ],
          time: 1800),
      Learning(
          id: uuid.v1(),
          name: 'Książka programowania',
          cost: 500,
          skills: [
            Skill(
              name: ETypeSkills.programming,
              exp: 1,
            ),
          ],
          time: 1800),
      Learning(
          id: uuid.v1(),
          name: 'Kurs programowania',
          cost: 5000,
          skills: [
            Skill(
              name: ETypeSkills.programming,
              exp: 1,
            ),
          ],
          time: 900),
    ];
  }
  //#endregion

  //#region meal
  static List<Meal> meals() {
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
  //#endregion

  //#region houses
  static List<House> houses() {
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
  //#endregion

  //#region cars
  static List<Transport> transports() {
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
  //#endregion

  //#region events
  static List<GameEvent> events() {
    var uuid = Uuid();
    return [
      GameEvent(
        id: uuid.v1(),
        name: 'You are sick',
        description: 'You are sick',
        eTypeEffect: ETypeEffect.sick,
        value: 0.02,
        duration: 3,
        leftDuration: 3,
        frequency: 500,
      ),
      GameEvent(
        id: uuid.v1(),
        name: 'You are sick',
        description: 'You are sick',
        eTypeEffect: ETypeEffect.sick,
        value: 0.02,
        duration: 7,
        leftDuration: 7,
        frequency: 800,
      ),
      GameEvent(
        id: uuid.v1(),
        name: 'You are sick',
        description: 'You are sick',
        eTypeEffect: ETypeEffect.sick,
        value: 0.02,
        duration: 14,
        leftDuration: 14,
        frequency: 1200,
      ),
      GameEvent(
        id: uuid.v1(),
        name: 'You got the money',
        description: 'You got the money',
        eTypeEffect: ETypeEffect.money,
        value: 2000,
        duration: 0,
        leftDuration: 0,
        frequency: 120,
        active: false,
      ),
      GameEvent(
        id: uuid.v1(),
        name: 'You lost money',
        description: 'You lost money',
        eTypeEffect: ETypeEffect.money,
        value: -2000,
        duration: 0,
        leftDuration: 0,
        frequency: 120,
        active: false,
      ),
      GameEvent(
        id: uuid.v1(),
        name: 'Unpaid taxes',
        description: 'Unpaid taxes',
        eTypeEffect: ETypeEffect.taxes,
        value: -0.3,
        duration: 0,
        leftDuration: 0,
        frequency: 120,
        active: false,
      ),
    ];
  }
  //#endregion

  //#region medicines
  static List<Medicine> medicines() {
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
  //#endregion
}
