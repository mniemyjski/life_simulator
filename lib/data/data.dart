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
            exp: 0,
            salary: 800,
            interval: 30,
            time: 12,
            requirements: [],
          ),
          Experience(
            exp: 1,
            salary: 1200,
            interval: 30,
            time: 12,
            requirements: [],
          ),
          Experience(
            exp: 2,
            salary: 2200,
            interval: 30,
            time: 12,
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
            exp: 0,
            salary: 800,
            interval: 30,
            time: 12,
            requirements: [],
          ),
          Experience(
            exp: 1,
            salary: 1200,
            interval: 30,
            time: 12,
            requirements: [],
          ),
          Experience(
            exp: 2,
            salary: 2200,
            interval: 30,
            time: 12,
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
            exp: 0,
            salary: 1000,
            interval: 30,
            time: 10,
            requirements: [
              Skill(name: ETypeSkills.programming, exp: 1),
            ],
          ),
          Experience(
            exp: 1,
            salary: 2000,
            interval: 30,
            time: 10,
            requirements: [
              Skill(name: ETypeSkills.programming, exp: 2),
            ],
          ),
          Experience(
            exp: 2,
            salary: 4000,
            interval: 30,
            time: 10,
            requirements: [
              Skill(name: ETypeSkills.programming, exp: 3),
            ],
          ),
          Experience(
            exp: 3,
            salary: 6000,
            interval: 30,
            time: 10,
            requirements: [
              Skill(name: ETypeSkills.programming, exp: 4),
            ],
          ),
          Experience(
            exp: 4,
            salary: 10000,
            interval: 30,
            time: 10,
            requirements: [
              Skill(name: ETypeSkills.programming, exp: 5),
            ],
          ),
          Experience(
            exp: 5,
            salary: 28000,
            interval: 30,
            time: 10,
            requirements: [
              Skill(name: ETypeSkills.programming, exp: 6),
            ],
          ),
        ],
      ),
      Job(
        id: uuid.v1(),
        company: 'NetGuru',
        industry: 'IT',
        experiences: [
          Experience(
            exp: 0,
            salary: 1000,
            interval: 30,
            time: 10,
            requirements: [
              Skill(name: ETypeSkills.programming, exp: 1),
            ],
          ),
          Experience(
            exp: 1,
            salary: 2000,
            interval: 30,
            time: 10,
            requirements: [
              Skill(name: ETypeSkills.programming, exp: 2),
            ],
          ),
          Experience(
            exp: 2,
            salary: 4000,
            interval: 30,
            time: 10,
            requirements: [
              Skill(name: ETypeSkills.programming, exp: 3),
            ],
          ),
          Experience(
            exp: 3,
            salary: 6000,
            interval: 30,
            time: 10,
            requirements: [
              Skill(name: ETypeSkills.programming, exp: 4),
            ],
          ),
          Experience(
            exp: 4,
            salary: 10000,
            interval: 30,
            time: 10,
            requirements: [
              Skill(name: ETypeSkills.programming, exp: 5),
            ],
          ),
          Experience(
            exp: 5,
            salary: 28000,
            interval: 30,
            time: 10,
            requirements: [
              Skill(
                name: ETypeSkills.programming,
                exp: 6,
              ),
            ],
          ),
        ],
      ),
      Job(
        id: uuid.v1(),
        company: 'Divinity',
        industry: 'IT',
        experiences: [
          Experience(
            exp: 0,
            salary: 1000,
            interval: 30,
            time: 10,
            requirements: [
              Skill(name: ETypeSkills.programming, exp: 1),
            ],
          ),
          Experience(
            exp: 1,
            salary: 2000,
            interval: 30,
            time: 10,
            requirements: [
              Skill(name: ETypeSkills.programming, exp: 2),
            ],
          ),
          Experience(
            exp: 2,
            salary: 4000,
            interval: 30,
            time: 10,
            requirements: [
              Skill(name: ETypeSkills.programming, exp: 3),
            ],
          ),
          Experience(
            exp: 3,
            salary: 6000,
            interval: 30,
            time: 10,
            requirements: [
              Skill(name: ETypeSkills.programming, exp: 4),
            ],
          ),
          Experience(
            exp: 4,
            salary: 10000,
            interval: 30,
            time: 10,
            requirements: [
              Skill(name: ETypeSkills.programming, exp: 5),
            ],
          ),
          Experience(
            exp: 5,
            salary: 28000,
            interval: 30,
            time: 10,
            requirements: [
              Skill(
                name: ETypeSkills.programming,
                exp: 6,
              ),
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
      ),
      Meal(
        id: uuid.v1(),
        name: 'food 4',
        cost: 80,
      ),
      Meal(
        id: uuid.v1(),
        name: 'food 5',
        cost: 150,
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
      ),
      Transport(
        id: uuid.v1(),
        name: 'Car 1',
        eTypeTransport: ETypeTransport.car,
        brand: 'Brand 1',
        cost: 2000,
        monthlyCost: 200,
      ),
      Transport(
        id: uuid.v1(),
        name: 'Car 2',
        eTypeTransport: ETypeTransport.car,
        brand: 'Brand 1',
        cost: 5000,
        monthlyCost: 200,
      ),
    ];
  }
  //#endregion
}
