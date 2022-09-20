import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/widgets.dart';

import '../../constants/constants.dart';
import '../date/widgets/next_day.dart';
import '../game/widget/app_bar_stats.dart';
import 'cubit/job/freelance_job_cubit.dart';
import 'widgets/freelance_job_creator.dart';
import 'widgets/freelance_job_element.dart';

class FreelanceJobsScreen extends StatelessWidget {
  const FreelanceJobsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppBarStats(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${LocaleKeys.jobs.tr()}:',
              style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white),
            ),
          ),
          Expanded(
            child: BlocBuilder<FreelanceJobCubit, FreelanceWorkState>(
              builder: (context, state) {
                return state.maybeWhen(
                    orElse: () => Container(),
                    loaded: (listJobs) {
                      if (listJobs.isEmpty) {
                        return Center(
                          child: Text(
                            LocaleKeys.queueIsEmpty.tr(),
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        );
                      }

                      return ListView.builder(
                          itemCount: listJobs.length,
                          itemBuilder: (context, index) {
                            return FreelanceJobElement(listJobs[index], index + 1);
                          });
                    });
              },
            ),
          ),
          const SizedBox(height: 80),
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
            const NextDayButton(),
            FloatingActionButton(
              heroTag: null,
              onPressed: () => showModalBottomSheet<void>(
                  isScrollControlled: true,
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  context: context,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(8.0))),
                  builder: (BuildContext context) => const FreelanceJobCreator()),
              child: const FaIcon(FontAwesomeIcons.plus),
            ),
          ],
        ),
      ),
    );
  }
}
