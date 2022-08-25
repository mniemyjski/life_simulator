import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/database/cubit/database_cubit.dart';
import 'package:life_simulator/app/database/models/database.dart';
import 'package:life_simulator/app/job/cubit/job_cubit.dart';
import 'package:life_simulator/constants/constants.dart';
import 'package:life_simulator/widgets/custom_drop_down_button.dart';

import '../../../utilities/utilities.dart';
import '../models/job/job_model.dart';

class LookingForJob extends StatefulWidget {
  const LookingForJob({Key? key}) : super(key: key);

  @override
  State<LookingForJob> createState() => _LookingForJobState();
}

class _LookingForJobState extends State<LookingForJob> {
  List<String> list = ['All', ...Enums.toList(ETypeIndustry.values)];
  late String selected = list.first;

  List<Job> _getAllJobs(List<Job> jobs) {
    List<Job> result = [];
    for (var j in jobs) {
      for (var e in j.experiences) {
        if (selected == 'All') {
          result.add(j.copyWith(experiences: [e]));
          continue;
        } else if (selected == Enums.toText(j.industry)) {
          result.add(j.copyWith(experiences: [e]));
        }
      }
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<DatabaseCubit, Database>(
        builder: (context, state) {
          return _body(jobs: state.jobsDB);
        },
      ),
    );
  }

  Builder _body({required List<Job> jobs}) {
    return Builder(builder: (context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: CustomDropDownButton(
              items: list,
              onChanged: (v) => setState(() => selected = v),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _getAllJobs(jobs).length,
              itemBuilder: (_, index) {
                Job element = _getAllJobs(jobs)[index];

                return Card(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    style: Theme.of(context).textTheme.bodyText1,
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '${LocaleKeys.company.tr()}: ',
                                        style: const TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(text: element.company),
                                    ],
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: Theme.of(context).textTheme.bodyText1,
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '${LocaleKeys.industry.tr()}: ',
                                        style: const TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(text: Enums.toText(element.industry)),
                                    ],
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: Theme.of(context).textTheme.bodyText1,
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '${LocaleKeys.salary.tr()}: ',
                                        style: const TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(text: element.experiences.first.salary.toMoney()),
                                    ],
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: Theme.of(context).textTheme.bodyText1,
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '${LocaleKeys.experience.tr()}: ',
                                        style: const TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(text: element.experiences.first.exp.toString()),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${LocaleKeys.skills.tr()}:',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                ListView.builder(
                                    shrinkWrap: true,
                                    physics: const NeverScrollableScrollPhysics(),
                                    itemCount: element.experiences.first.requirements.length,
                                    itemBuilder: (context, index) {
                                      var skill = element.experiences.first.requirements[index];
                                      return Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          '${Enums.toText(skill.name).tr()}: ${skill.lvl}',
                                          style: Theme.of(context).textTheme.bodyText1,
                                        ),
                                      );
                                    }),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              String toast = context.read<JobCubit>().getJob(
                                    job: element,
                                    experience: element.experiences.first,
                                  );

                              BotToast.showText(text: toast, align: const Alignment(0.1, 0.05));
                            },
                            icon: const FaIcon(FontAwesomeIcons.circleCheck),
                          ),
                        ],
                      ),
                    ],
                  ),
                ));
              },
            ),
          ),
        ],
      );
    });
  }
}
