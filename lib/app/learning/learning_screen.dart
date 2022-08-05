import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/game/widget/app_bar_stats.dart';
import 'package:life_simulator/app/learning/cubit/learning_cubit.dart';
import 'package:life_simulator/app/learning/models/learning_model.dart';
import 'package:life_simulator/app/learning/widgets/learning_element.dart';

import '../date/widgets/next_day.dart';

class LearningScreen extends StatelessWidget {
  const LearningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppBarStats(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Queue',
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
                        List<Learning> _list = List.from(
                            learnings.where((element) => element.status == ETypeStatus.queue));

                        return ListView.builder(
                          itemCount: _list.length,
                          itemBuilder: (context, index) {
                            return LearningElement(
                              element: _list[index],
                              onPressed: () => context.read<LearningCubit>().remove(_list[index]),
                              iconData: Icons.remove,
                            );
                          },
                        );
                      });
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Materials',
              style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: BlocBuilder<LearningCubit, LearningState>(
                builder: (context, state) {
                  return state.maybeWhen(
                      orElse: () => Container(),
                      loaded: (learnings) {
                        List<Learning> _list = List.from(
                            learnings.where((element) => element.status == ETypeStatus.base));

                        return ListView.builder(
                          itemCount: _list.length,
                          itemBuilder: (context, index) {
                            return LearningElement(
                              element: _list[index],
                              onPressed: () => context.read<LearningCubit>().add(_list[index]),
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
          children: [
            FloatingActionButton(
              heroTag: null,
              onPressed: () => context.router.pop(),
              child: const FaIcon(FontAwesomeIcons.arrowRotateLeft),
            ),
            const NextDayButton(),
          ],
        ),
      ),
    ));
  }
}
