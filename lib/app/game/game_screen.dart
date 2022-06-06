import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/game/widget/app_bar_stats.dart';
import 'package:life_simulator/app/rules/cubit/rules_cubit.dart';
import 'package:life_simulator/config/routes/routes.gr.dart';

import '../date/cubit/date_cubit.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<RulesCubit, RulesState>(
      listener: (context, state) {
        state.whenOrNull(loaded: (rules) {
          if (rules) {
            BotToast.showText(text: 'End Game', align: Alignment(0.1, 0.05));
            context.router.push(const HomeRoute());
          }
        });
      },
      child: SafeArea(
        child: Scaffold(
            body: Column(
              children: [
                AppBarStats(),
                SizedBox(
                  height: 8,
                ),
                Expanded(
                  child: GridView.count(
                    padding: const EdgeInsets.all(1),
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    crossAxisCount: 3,
                    children: <Widget>[
                      Card(
                        child: IconButton(
                          onPressed: () {
                            context.router.push(const PersonalityRoute());
                          },
                          icon: FaIcon(FontAwesomeIcons.userLarge),
                        ),
                      ),
                      Card(
                        child: IconButton(
                          onPressed: () {
                            context.router.push(const IncomeRoute());
                          },
                          icon: FaIcon(FontAwesomeIcons.scaleBalanced),
                        ),
                      ),
                      Card(
                        child: IconButton(
                          onPressed: () {
                            context.router.push(const JobRoute());
                          },
                          icon: FaIcon(FontAwesomeIcons.briefcase),
                        ),
                      ),
                      Card(
                        child: IconButton(
                          onPressed: () {
                            context.router.push(const LearningRoute());
                          },
                          icon: FaIcon(FontAwesomeIcons.graduationCap),
                        ),
                      ),
                      Card(
                        child: IconButton(
                          onPressed: () {
                            context.router.push(const BankRoute());
                          },
                          icon: FaIcon(FontAwesomeIcons.piggyBank),
                        ),
                      ),
                      Card(
                        child: IconButton(
                          onPressed: () {
                            context.router.pop();
                          },
                          icon: FaIcon(FontAwesomeIcons.xmark),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () => context.read<DateCubit>().nextDay(),
              child: FaIcon(FontAwesomeIcons.hourglass),
            )),
      ),
    );
  }
}
