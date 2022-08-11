import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/freelance/widgets/freelance_job_creator.dart';
import 'package:life_simulator/app/freelance/widgets/freelance_job_element.dart';

import '../game/widget/app_bar_stats.dart';
import 'cubit/job/freelance_job_cubit.dart';

class FreelanceJobsScreen extends StatelessWidget {
  const FreelanceJobsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const AppBarStats(),
            Expanded(
              child: BlocBuilder<FreelanceJobCubit, FreelanceWorkState>(
                builder: (context, state) {
                  return state.maybeWhen(
                      orElse: () => Container(),
                      loaded: (listJobs) {
                        return ListView.builder(
                            itemCount: listJobs.length,
                            itemBuilder: (context, index) {
                              return FreelanceJobElement(listJobs[index]);
                            });
                      });
                },
              ),
            ),
          ],
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
                child: const FaIcon(FontAwesomeIcons.arrowRotateLeft),
              ),
              FloatingActionButton(
                heroTag: null,
                onPressed: () => showModalBottomSheet<void>(
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    context: context,
                    builder: (BuildContext context) => const FreelanceJobCreator()),
                child: const FaIcon(FontAwesomeIcons.plus),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
