import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/widgets.dart';

import '../../constants/constants.dart';
import 'cubit/job/freelance_job_cubit.dart';
import 'widgets/freelance_job_creator.dart';
import 'widgets/freelance_job_element.dart';

class FreelanceJobsScreen extends StatelessWidget {
  const FreelanceJobsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(title: Text(LocaleKeys.jobs.tr())),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          Expanded(
            child: BlocBuilder<FreelanceJobCubit, FreelanceJobState>(
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

                      return ReorderableListView.builder(
                          itemCount: listJobs.length,
                          onReorder: (oldIndex, newIndex) => context
                              .read<FreelanceJobCubit>()
                              .reorderAble(oldIndex: oldIndex, newIndex: newIndex),
                          itemBuilder: (context, index) {
                            return FreelanceJobElement(
                              listJobs[index],
                              index + 1,
                              key: ValueKey(
                                listJobs[index].id,
                              ),
                            );
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
            const SizedBox(height: 56),
            const SizedBox(height: 56),
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
