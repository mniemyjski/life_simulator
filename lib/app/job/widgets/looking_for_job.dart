import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_simulator/app/database/cubit/database_cubit.dart';
import 'package:life_simulator/app/database/models/database.dart';
import 'package:life_simulator/app/job/widgets/job_element.dart';
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
                  itemCount: _getAllJobs(state.jobsDB).length,
                  itemBuilder: (_, index) {
                    Job element = _getAllJobs(state.jobsDB)[index];

                    return JobElement(element);
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
