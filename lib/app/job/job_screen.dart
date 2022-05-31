import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/job/cubit/job_cubit.dart';
import 'package:life_simulator/app/job/widgets/looking_for_job.dart';
import 'package:life_simulator/app/job/widgets/you_job.dart';

import '../app_bar/app_bar_stats.dart';
import '../date/cubit/date_cubit.dart';

class JobScreen extends StatelessWidget {
  const JobScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: BlocBuilder<JobCubit, JobState>(
        builder: (context, state) {
          return state.maybeWhen(
              orElse: () => Container(),
              loaded: (job, experience, jobs) {
                return Column(
                  children: [
                    AppBarStats(),
                    job != null
                        ? YourJob(
                            job: job,
                            experience: experience!,
                          )
                        : LookingForJob(),
                    SizedBox(height: 80),
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
          children: [
            FloatingActionButton(
              heroTag: null,
              onPressed: () => context.router.pop(),
              child: FaIcon(FontAwesomeIcons.arrowRotateLeft),
            ),
            FloatingActionButton(
              onPressed: () => context.read<DateCubit>().nextDay(),
              child: FaIcon(FontAwesomeIcons.hourglass),
            )
          ],
        ),
      ),
    ));
  }
}