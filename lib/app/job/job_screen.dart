import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/constants/locale_keys.g.dart';
import 'package:richeable/widgets/widgets.dart';

import '../date/widgets/next_day.dart';
import '../game/widget/app_bar_game.dart';
import 'cubit/job_cubit.dart';
import 'widgets/looking_for_job.dart';
import 'widgets/your_job.dart';

class JobScreen extends StatelessWidget {
  const JobScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBarGame(title: LocaleKeys.job.tr()),
      body: BlocBuilder<JobCubit, JobState>(
        builder: (context, state) {
          return state.maybeWhen(
              orElse: () => Container(),
              loaded: (job, experience) {
                return Column(
                  children: [
                    job != null
                        ? YourJob(
                            job: job,
                            experience: experience!,
                          )
                        : const LookingForJob(),
                    const SizedBox(height: 80),
                  ],
                );
              });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: null,
              onPressed: () => context.router.pop(),
              child: const FaIcon(FontAwesomeIcons.arrowRotateLeft),
            ),
            const NextDayButton(),
            const SizedBox(width: 56),
          ],
        ),
      ),
    );
  }
}
