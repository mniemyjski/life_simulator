import 'package:life_simulator/app/job/models/job/job_model.dart';
import 'package:uuid/uuid.dart';

import '../../income/models/income_model.dart';
import '../../job/models/experience/experience_model.dart';
import '../../skills/models/skills_model.dart';

class DataJobs {
  static List<Job> db() {
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
}
