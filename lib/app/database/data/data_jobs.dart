import 'package:uuid/uuid.dart';

import '../../job/models/experience/experience_model.dart';
import '../../job/models/job/job_model.dart';
import '../../money/models/income/income_model.dart';
import '../../skills/models/skill_model.dart';

class DataJobs {
  static List<Job> db() {
    var uuid = const Uuid();
    return [
      Job(
        id: uuid.v1(),
        company: 'Call Center',
        industry: ETypeIndustry.customerService,
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
            requirements: [
              const Skill(name: ETypeSkills.confidence),
              const Skill(name: ETypeSkills.communicativeness),
            ],
          ),
          Experience(
            id: uuid.v1(),
            name: 'test 2',
            exp: 1,
            salary: 1000,
            eTypeFrequency: ETypeFrequency.monthly,
            work: 8,
            commuting: 2,
            bonusToRelax: -1,
            bonusToSleep: -1,
            requirements: [
              const Skill(name: ETypeSkills.confidence, lvl: 1),
              const Skill(name: ETypeSkills.communicativeness, lvl: 1),
            ],
          ),
          Experience(
            id: uuid.v1(),
            name: 'test 3',
            exp: 2,
            salary: 1500,
            eTypeFrequency: ETypeFrequency.monthly,
            work: 8,
            commuting: 2,
            bonusToRelax: -1,
            bonusToSleep: -1,
            requirements: [
              const Skill(name: ETypeSkills.confidence, lvl: 3),
              const Skill(name: ETypeSkills.communicativeness, lvl: 3),
            ],
          ),
        ],
      ),
      Job(
        id: uuid.v1(),
        company: 'Lidl',
        industry: ETypeIndustry.shop,
        experiences: [
          Experience(
            id: uuid.v1(),
            name: 'test 1',
            exp: 0,
            salary: 800,
            eTypeFrequency: ETypeFrequency.monthly,
            work: 8,
            commuting: 2,
            bonusToRelax: -1,
            bonusToSleep: -1,
            requirements: [
              const Skill(name: ETypeSkills.confidence),
              const Skill(name: ETypeSkills.communicativeness),
            ],
          ),
          Experience(
            id: uuid.v1(),
            name: 'test 2',
            exp: 1,
            salary: 1000,
            eTypeFrequency: ETypeFrequency.monthly,
            work: 8,
            commuting: 2,
            bonusToRelax: -1,
            bonusToSleep: -1,
            requirements: [
              const Skill(name: ETypeSkills.confidence, lvl: 1),
              const Skill(name: ETypeSkills.communicativeness, lvl: 1),
            ],
          ),
          Experience(
            id: uuid.v1(),
            name: 'test 3',
            exp: 2,
            salary: 1500,
            eTypeFrequency: ETypeFrequency.monthly,
            work: 8,
            commuting: 2,
            bonusToRelax: -1,
            bonusToSleep: -1,
            requirements: [
              const Skill(name: ETypeSkills.confidence, lvl: 3),
              const Skill(name: ETypeSkills.communicativeness, lvl: 3),
            ],
          ),
        ],
      ),
      Job(
        id: uuid.v1(),
        company: 'Miquide',
        industry: ETypeIndustry.it,
        experiences: [
          Experience(
            id: uuid.v1(),
            name: 'test 0',
            exp: 0,
            salary: 1000,
            eTypeFrequency: ETypeFrequency.monthly,
            work: 8,
            commuting: 2,
            requirements: [
              const Skill(name: ETypeSkills.programming, lvl: 1),
            ],
          ),
          Experience(
            id: uuid.v1(),
            name: 'test 1',
            exp: 1,
            salary: 1500,
            eTypeFrequency: ETypeFrequency.monthly,
            work: 8,
            commuting: 2,
            requirements: [
              const Skill(name: ETypeSkills.programming, lvl: 2),
              const Skill(name: ETypeSkills.confidence, lvl: 0),
              const Skill(name: ETypeSkills.communicativeness, lvl: 0),
            ],
          ),
          Experience(
            id: uuid.v1(),
            name: 'test 2',
            exp: 2,
            salary: 2500,
            eTypeFrequency: ETypeFrequency.monthly,
            work: 8,
            commuting: 0,
            requirements: [
              const Skill(name: ETypeSkills.programming, lvl: 4),
              const Skill(name: ETypeSkills.confidence, lvl: 0),
              const Skill(name: ETypeSkills.communicativeness, lvl: 0),
            ],
          ),
          Experience(
            id: uuid.v1(),
            name: 'test 3',
            exp: 3,
            salary: 4000,
            eTypeFrequency: ETypeFrequency.monthly,
            work: 8,
            commuting: 0,
            requirements: [
              const Skill(name: ETypeSkills.programming, lvl: 5),
              const Skill(name: ETypeSkills.confidence, lvl: 0),
              const Skill(name: ETypeSkills.communicativeness, lvl: 0),
            ],
          ),
          Experience(
            id: uuid.v1(),
            name: 'test 4',
            exp: 4,
            salary: 6000,
            eTypeFrequency: ETypeFrequency.monthly,
            work: 8,
            commuting: 0,
            requirements: [
              const Skill(name: ETypeSkills.programming, lvl: 5),
              const Skill(name: ETypeSkills.analytics, lvl: 1),
              const Skill(name: ETypeSkills.confidence, lvl: 1),
              const Skill(name: ETypeSkills.communicativeness, lvl: 1),
            ],
          ),
          Experience(
            id: uuid.v1(),
            name: 'test 5',
            exp: 5,
            salary: 10000,
            eTypeFrequency: ETypeFrequency.monthly,
            work: 8,
            commuting: 0,
            requirements: [
              const Skill(name: ETypeSkills.programming, lvl: 6),
              const Skill(name: ETypeSkills.management, lvl: 1),
              const Skill(name: ETypeSkills.analytics, lvl: 3),
              const Skill(name: ETypeSkills.confidence, lvl: 4),
              const Skill(name: ETypeSkills.communicativeness, lvl: 4),
            ],
          ),
        ],
      ),
    ];
  }
}
