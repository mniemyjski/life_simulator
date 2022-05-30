import 'dart:async';
import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:life_simulator/app/job/models/experience/experience_model.dart';
import 'package:life_simulator/app/skills/cubit/skills_cubit.dart';
import 'package:life_simulator/app/time_spend/cubit/time_spend_cubit.dart';
import 'package:life_simulator/data/data.dart';

import '../../income/cubit/income_cubit.dart';
import '../../income/models/income_model.dart';
import '../../money/cubit/money_cubit.dart';
import '../../save/save_cubit.dart';
import '../models/job/job_model.dart';

part 'job_cubit.freezed.dart';
part 'job_cubit.g.dart';
part 'job_state.dart';

@lazySingleton
class JobCubit extends HydratedCubit<JobState> {
  final SaveCubit _saveCubit;
  final IncomeCubit _incomeCubit;
  final TimeSpendCubit _timeSpendCubit;
  final SkillsCubit _skillsCubit;
  final MoneyCubit _moneyCubit;
  late StreamSubscription _save;

  JobCubit({
    required SaveCubit saveCubit,
    required IncomeCubit incomeCubit,
    required TimeSpendCubit timeSpendCubit,
    required SkillsCubit skillsCubit,
    required MoneyCubit moneyCubit,
  })  : _incomeCubit = incomeCubit,
        _timeSpendCubit = timeSpendCubit,
        _skillsCubit = skillsCubit,
        _moneyCubit = moneyCubit,
        _saveCubit = saveCubit,
        super(JobState.initial(job: null, experience: null, jobs: null)) {
    _saveCubit.state.whenOrNull(loaded: (save) => init(save));
    _save = _saveCubit.stream.listen((s) => s.whenOrNull(loaded: (save) => init(save)));
  }

  @override
  Future<void> close() async {
    _save.cancel();
    super.close();
  }

  init(bool newGame) {
    state.whenOrNull(
      initial: (job, experience, jobs) {
        !newGame || jobs == null
            ? emit(JobState.loaded(job: null, experience: null, jobs: Data.jobs()))
            : emit(JobState.loaded(job: job, experience: experience, jobs: jobs));
      },
      loaded: (job, experience, jobs) {
        !newGame
            ? emit(JobState.loaded(job: null, experience: null, jobs: Data.jobs()))
            : emit(JobState.loaded(job: job, experience: experience, jobs: jobs));
      },
    );
  }

  String getJob({required Job job, required Experience experience}) {
    String? usedTime = _timeSpendCubit.changeUsed(1);
    if (usedTime != null) return "You don't have free time";

    bool test = !_testSkills(experience);
    if (test) return "You didn't get a job";

    return state.maybeWhen(
        loaded: (_job, _experience, jobs) {
          String? workTime = _timeSpendCubit.changeWork(experience.time);
          if (workTime != null) {
            _timeSpendCubit.changeUsed(-1);
            return "You don't have free time";
          }

          Income income = Income(
            id: job.id,
            source: ETypeSource.job,
            typeIncome: ETypeIncome.revenue,
            value: experience.salary,
            interval: experience.interval,
            timeLeft: experience.interval,
          );

          _incomeCubit.add(income);
          emit(JobState.loaded(job: job, experience: experience, jobs: jobs));
          return "succeed";
        },
        orElse: () => 'error');
  }

  bool _testSkills(Experience experience) {
    var rng = Random();
    int _req = 0;
    int _skills = 0;
    int random = 0;

    if (experience.requirements.length == 0) return true;

    bool? test = _skillsCubit.state.whenOrNull(loaded: (skills) {
      for (var r = 0; r < experience.requirements.length; r++) {
        _req += experience.requirements[r].exp;
        for (var s = 0; s < skills.length; s++) {
          if (experience.requirements[r].name == skills[s].name) {
            _skills += skills[s].exp;
          }
        }
      }

      _req = (_req).toInt();
      _skills = (_skills).toInt();

      if (_skills == 0) return false;

      // random = rng.nextInt(_skills);
      if (_skills < _req) return false;

      return true;
    });

    return test ?? false;
  }

  leaveJob() {
    state.whenOrNull(loaded: (job, experience, jobs) {
      _incomeCubit.state.whenOrNull(loaded: (incomes) {
        incomes
          ..forEach((element) {
            if (element.id == job!.id && element.timeLeft <= 20) {
              _moneyCubit
                  .change((element.value / element.interval / element.timeLeft * 100).toInt());
            }
          });
      });

      _incomeCubit.remove(job!.id);
      _timeSpendCubit.changeWork(-experience!.time);
      emit(JobState.loaded(job: null, experience: null, jobs: jobs));
    });
  }

  String? applyForPromotion() {
    return state.whenOrNull(loaded: (job, experience, jobs) {
      int exp = experience!.exp + 1;

      if (exp >= job!.experiences.length) return 'max';

      String? usedTime = _timeSpendCubit.changeUsed(1);
      if (usedTime != null) return "You don't have free time";

      Experience newExperience = job.experiences[exp];

      bool test = !_testSkills(newExperience);
      if (test) return "You didn't get a promote";

      _incomeCubit.update(id: job.id, value: newExperience.salary);
      emit(JobState.loaded(job: job, experience: newExperience, jobs: jobs));
      return 'succeed';
    });
  }

  @override
  JobState? fromJson(Map<String, dynamic> json) {
    return JobState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(JobState state) {
    return state.toJson();
  }
}
