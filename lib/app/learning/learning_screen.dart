import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/game/widget/app_bar_stats.dart';
import 'package:life_simulator/app/learning/cubit/learning_cubit.dart';
import 'package:life_simulator/app/learning/models/learning_model.dart';
import 'package:life_simulator/app/learning/widgets/learning_element.dart';
import 'package:life_simulator/constants/locale_keys.g.dart';
import 'package:life_simulator/utilities/utilities.dart';

import '../../config/routes/routes.gr.dart';
import '../date/widgets/next_day.dart';
import '../time_spend/cubit/time_spend_cubit.dart';

class LearningScreen extends StatelessWidget {
  const LearningScreen({Key? key}) : super(key: key);

  List<Learning> _filtered(List<Learning> list) {
    return List.from(list.where((element) {
      return true;
    }));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppBarStats(),
          Row(
            children: [
              Expanded(
                child: Card(
                    child: IconButton(
                        onPressed: () {
                          String? toast = context.read<TimeSpendCubit>().changeLearn(-1);
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
                      '${LocaleKeys.learningTime.tr()}:',
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
                            loaded: (timeSpend) => '${timeSpend.learn.toString()}h'),
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
                          String? toast = context.read<TimeSpendCubit>().changeLearn(1);
                          if (toast != null) {
                            BotToast.showText(text: toast, align: const Alignment(0.1, 0.05));
                          }
                        },
                        icon: const FaIcon(Icons.add))),
              ),
            ],
          ),
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
                              LocaleKeys.queueIsEmpty,
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          );
                        }

                        return ListView.builder(
                          itemCount: list.length,
                          itemBuilder: (context, index) {
                            return LearningElement(
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
    ));
  }
}
