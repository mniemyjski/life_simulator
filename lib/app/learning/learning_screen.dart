import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/game/widget/app_bar_stats.dart';
import 'package:life_simulator/app/learning/cubit/learning_cubit.dart';
import 'package:life_simulator/app/learning/models/learning_model.dart';
import 'package:life_simulator/app/learning/widgets/learning_element.dart';
import 'package:life_simulator/app/learning/widgets/skill_element.dart';
import 'package:life_simulator/app/skills/cubit/skills_cubit.dart';

import '../date/cubit/date_cubit.dart';

class LearningScreen extends StatelessWidget {
  const LearningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          AppBarStats(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Skills'),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: BlocBuilder<SkillsCubit, SkillsState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => Container(),
                  loaded: (skills) {
                    List<Widget> list =
                        skills.map((element) => SkillElement(element: element)).toList();

                    return Wrap(children: list);
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Queue'),
          ),
          Expanded(
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
            padding: const EdgeInsets.all(8.0),
            child: Text('Materials'),
          ),
          Expanded(
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
          SizedBox(
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
