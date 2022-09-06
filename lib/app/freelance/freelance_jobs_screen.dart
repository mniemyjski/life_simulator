import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../constants/constants.dart';
import '../date/widgets/next_day.dart';
import '../game/widget/app_bar_stats.dart';
import '../time_spend/cubit/time_spend_cubit.dart';
import 'cubit/job/freelance_job_cubit.dart';
import 'widgets/freelance_job_creator.dart';
import 'widgets/freelance_job_element.dart';

class FreelanceJobsScreen extends StatelessWidget {
  const FreelanceJobsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const AppBarStats(),
            Row(
              children: [
                Expanded(
                  child: Card(
                      child: IconButton(
                          onPressed: () {
                            String? toast = context.read<TimeSpendCubit>().changeFreelance(-1);
                            if (toast != null) {
                              BotToast.showText(text: toast, align: const Alignment(0.1, 0.05));
                            }
                          },
                          icon: const FaIcon(Icons.remove))),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        '${LocaleKeys.freelanceTime.tr()}:',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          context.watch<TimeSpendCubit>().state.maybeWhen(
                              orElse: () => '0h',
                              loaded: (timeSpend) => '${timeSpend.freelance.toString()}h'),
                          style: Theme.of(context).textTheme.bodyText2!,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Card(
                      child: IconButton(
                          onPressed: () {
                            String? toast = context.read<TimeSpendCubit>().changeFreelance(1);
                            if (toast != null) {
                              BotToast.showText(text: toast, align: const Alignment(0.1, 0.05));
                            }
                          },
                          icon: const FaIcon(Icons.add))),
                ),
              ],
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
      ),
    );
  }
}
