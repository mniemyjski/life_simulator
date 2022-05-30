import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_simulator/app/job/cubit/job_cubit.dart';

import '../../../widgets/widgets.dart';
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
                    buildText(name: 'Company', value: job.company),
                    buildText(name: 'Industry', value: job.industry),
                    buildText(name: 'Experience', value: experience.exp.toString()),
                    buildText(name: 'Salary', value: '${experience.salary.toString()}\$'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: ElevatedButton(
                  onPressed: () {
                    var toast = context.read<JobCubit>().applyForPromotion();
                    if (toast != null) BotToast.showText(text: toast, align: Alignment(0.1, 0.05));
                  },
                  child: Text('Apply for a promotion'),
                ),
              ),
            ),
          ],
        ),
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
