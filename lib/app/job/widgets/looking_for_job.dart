import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/job/cubit/job_cubit.dart';

import '../models/job/job_model.dart';

class LookingForJob extends StatelessWidget {
  const LookingForJob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<JobCubit, JobState>(
        builder: (context, state) {
          return state.maybeWhen(
              orElse: () => Container(), loaded: (job, experience, jobs) => _body(jobs: jobs));
        },
      ),
    );
  }

  Builder _body({required List<Job> jobs}) {
    return Builder(builder: (context) {
      return ListView.builder(
        itemCount: jobs.length,
        itemBuilder: (_, index) => Card(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'Company: ${jobs[index].company}',
                        style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'Industry: ${jobs[index].industry}',
                        style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'Salary: ${jobs[index].experiences.first.salary}\$',
                        style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'Experience: ${jobs[index].experiences.first.exp}',
                        style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color),
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {
                  String toast = context.read<JobCubit>().getJob(
                        job: jobs[index],
                        experience: jobs[index].experiences.first,
                      );

                  BotToast.showText(text: toast, align: Alignment(0.1, 0.05));
                },
                icon: FaIcon(FontAwesomeIcons.circleCheck),
              ),
            ],
          ),
        )),
      );
    });
  }
}
