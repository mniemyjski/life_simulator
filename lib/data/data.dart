import 'package:life_simulator/app/skills/models/skills_model.dart';
import 'package:uuid/uuid.dart';

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
            interval: 30,
            work: 8,
            commuting: 2,
            requirements: [],
          ),
          Experience(
            id: uuid.v1(),
            name: 'test 2',
            exp: 1,
            salary: 1200,
            interval: 30,
            work: 8,
            commuting: 4,
            requirements: [],
          ),
          Experience(
            id: uuid.v1(),
            name: 'test 3',
            exp: 2,
            salary: 2200,
            interval: 30,
            work: 8,
            commuting: 2,
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
            interval: 30,
            work: 10,
            commuting: 2,
            requirements: [],
          ),
          Experience(
            id: uuid.v1(),
            name: 'test 2',
            exp: 1,
            salary: 1400,
            interval: 30,
            work: 10,
            commuting: 2,
            requirements: [],
          ),
          Experience(
            id: uuid.v1(),
            name: 'test 3',
            exp: 2,
            salary: 2400,
            interval: 30,
            work: 12,
            commuting: 0,
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
            interval: 30,
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
            interval: 30,
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
            interval: 30,
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
            interval: 30,
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
            interval: 30,
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
            interval: 30,
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
          time: 500),
      Learning(
          id: uuid.v1(),
          name: 'Wzorce projektowe',
          cost: 50,
          skills: [
            Skill(
              name: ETypeSkills.programming,
              exp: 1,
            ),
          ],
          time: 5),
      Learning(
          id: uuid.v1(),
          name: 'Kurs programowania',
          cost: 500,
          skills: [
            Skill(
              name: ETypeSkills.programming,
              exp: 1,
            ),
          ],
          time: 500),
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
        cost: 800,
        monthlyCost: 800,
        bonusToRelax: -1,
        bonusToSleep: -1,
      ),
      House(
        id: uuid.v1(),
        name: 'House 2',
        eTypeHouse: ETypeHouse.rent,
        cost: 1200,
        monthlyCost: 1200,
      ),
      House(
        id: uuid.v1(),
        name: 'House 3',
        eTypeHouse: ETypeHouse.rent,
        cost: 1800,
        monthlyCost: 1800,
        bonusToRelax: 1,
        bonusToSleep: 1,
      ),
      House(
        id: uuid.v1(),
        name: 'House 4',
        eTypeHouse: ETypeHouse.buy,
        cost: 60000,
        monthlyCost: 100,
      ),
      House(
        id: uuid.v1(),
        name: 'House 5',
        eTypeHouse: ETypeHouse.buy,
        cost: 160000,
        monthlyCost: 200,
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
          bonusToSleep: -1),
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
        cost: 1000,
        monthlyCost: 200,
        commuting: 2,
        bonusToRelax: 1,
      ),
    ];
  }
  //#endregion
}
