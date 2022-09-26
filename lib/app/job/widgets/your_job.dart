import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/constants/constants.dart';

import '../../../utilities/utilities.dart';
import '../../../widgets/widgets.dart';
import '../cubit/job_cubit.dart';
import '../models/experience/experience_model.dart';
import '../models/job/job_model.dart';

class YourJob extends StatelessWidget {
  final Job job;
  final Experience experience;
  const YourJob({Key? key, required this.job, required this.experience}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildText(
                      name: LocaleKeys.name.tr(),
                      value: experience.name,
                    ),
                    buildText(
                      name: LocaleKeys.company.tr(),
                      value: job.company,
                    ),
                    buildText(
                      name: LocaleKeys.industry.tr(),
                      value: Enums.toText(job.industry),
                    ),
                    buildText(
                      name: LocaleKeys.experience.tr(),
                      value: experience.exp.toString(),
                    ),
                    buildText(
                      name: LocaleKeys.salary.tr(),
                      value: '${experience.salary.toString()}\$',
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 4.0, top: 6.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BlocBuilder<JobCubit, JobState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                            orElse: () => Container(),
                            loaded: (job, exp) {
                              if (job!.experiences.length < (exp!.exp + 2)) return Container();

                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomButton(
                                    onPressed: () {
                                      var toast = context.read<JobCubit>().applyForPromotion();
                                      if (toast != null) {
                                        BotToast.showText(text: toast, align: Alignment(0.1, 0.05));
                                      }
                                    },
                                    child: Text('Apply for a promotion'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4.0, top: 10.0),
                                    child: Text('${LocaleKeys.requirementsToPromote.tr()}:'),
                                  ),
                                  ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: job.experiences[exp.exp + 1].requirements.length,
                                      itemBuilder: (context, index) {
                                        final element =
                                            job.experiences[exp.exp + 1].requirements[index];

                                        return Card(
                                            child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: RichText(
                                            text: TextSpan(
                                              style: Theme.of(context).textTheme.bodyText1,
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: '${Enums.toText(element.name).tr()}: ',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1!
                                                      .copyWith(fontWeight: FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text: element.lvl.toString(),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ));
                                      }),
                                ],
                              );
                            });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomButton(
            onPressed: () => context.read<JobCubit>().leaveJob(),
            child: Text('Leave Job'),
          ),
        ),
      ],
    );
  }

  Builder buildText({required String name, required String value}) {
    return Builder(builder: (context) {
      return Padding(
        padding: const EdgeInsets.only(left: 4),
        child: Card(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            width: 200,
            child: Text(
              '$name: $value',
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1!.color,
              ),
            ),
          ),
        ),
      );
    });
  }
}
