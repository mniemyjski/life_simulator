import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/widgets.dart';

import '../../config/routes/routes.gr.dart';
import '../../constants/constants.dart';
import '../date/widgets/next_day.dart';
import '../game/widget/app_bar_stats.dart';
import 'cubit/learning_cubit.dart';
import 'models/learning_model.dart';
import 'widgets/learning_element.dart';

class LearningScreen extends StatelessWidget {
  const LearningScreen({Key? key}) : super(key: key);

  List<Learning> _filtered(List<Learning> list) {
    return List.from(list.where((element) {
      return true;
    }));
  }

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
              '${LocaleKeys.queue.tr()}:',
              style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: BlocBuilder<LearningCubit, LearningState>(
                builder: (context, state) {
                  return state.maybeWhen(
                      orElse: () => Container(),
                      loaded: (learnings) {
                        List<Learning> list = _filtered(learnings);

                        if (list.isEmpty) {
                          return Center(
                            child: Text(
                              LocaleKeys.queueIsEmpty.tr(),
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          );
                        }

                        return ReorderableListView.builder(
                          itemCount: list.length,
                          onReorder: (oldIndex, newIndex) => context
                              .read<LearningCubit>()
                              .reorderAble(oldIndex: oldIndex, newIndex: newIndex),
                          itemBuilder: (context, index) {
                            return LearningElement(
                              key: ValueKey(list[index].id),
                              element: list[index],
                              iconData: Icons.remove,
                            );
                          },
                        );
                      });
                },
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          )
        ],
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
            FloatingActionButton(
              heroTag: null,
              onPressed: () => context.router.push(const MaterialsRoute()),
              child: const FaIcon(FontAwesomeIcons.plus),
            ),
          ],
        ),
      ),
    );
  }
}
