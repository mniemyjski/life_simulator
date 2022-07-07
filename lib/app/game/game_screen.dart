import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/date/widgets/next_day.dart';
import 'package:life_simulator/app/game/widget/app_bar_stats.dart';
import 'package:life_simulator/app/rules/cubit/rules_cubit.dart';
import 'package:life_simulator/config/routes/routes.gr.dart';

import '../event/widgets/events_list.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<RulesCubit, RulesState>(
          listener: (context, state) {
            state.whenOrNull(loaded: (rules) {
              if (rules) {
                BotToast.showText(text: 'End Game', align: const Alignment(0.1, 0.05));
                context.router.push(const HomeRoute());
              }
            });
          },
        ),
      ],
      child: SafeArea(
        child: Scaffold(
            body: Column(
              children: [
                const AppBarStats(),
                const EventsList(),
                Expanded(
                  child: GridView.count(
                    padding: const EdgeInsets.all(1),
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 4,
                    crossAxisCount: 5,
                    children: <Widget>[
                      Card(
                        child: IconButton(
                          onPressed: () {
                            context.router.push(const PersonalityRoute());
                          },
                          icon: const FaIcon(FontAwesomeIcons.userLarge),
                        ),
                      ),
                      Card(
                        child: IconButton(
                          onPressed: () {
                            context.router.push(const IncomeRoute());
                          },
                          icon: const FaIcon(FontAwesomeIcons.scaleBalanced),
                        ),
                      ),
                      Card(
                        child: IconButton(
                          onPressed: () {
                            context.router.push(const JobRoute());
                          },
                          icon: const FaIcon(FontAwesomeIcons.briefcase),
                        ),
                      ),
                      Card(
                        child: IconButton(
                          onPressed: () {
                            context.router.push(const RealAssetsRoute());
                          },
                          icon: const FaIcon(FontAwesomeIcons.city),
                        ),
                      ),
                      Card(
                        child: IconButton(
                          onPressed: () {
                            context.router.push(const StockMarketRoute());
                          },
                          icon: const FaIcon(FontAwesomeIcons.chartLine),
                        ),
                      ),
                      Card(
                        child: IconButton(
                          onPressed: () {
                            context.router.push(const LearningRoute());
                          },
                          icon: const FaIcon(FontAwesomeIcons.graduationCap),
                        ),
                      ),
                      Card(
                        child: IconButton(
                          onPressed: () {
                            context.router.push(const BankRoute());
                          },
                          icon: const FaIcon(FontAwesomeIcons.piggyBank),
                        ),
                      ),
                      Card(
                        child: IconButton(
                          onPressed: () {
                            context.router.push(const MedicinesRoute());
                          },
                          icon: const FaIcon(FontAwesomeIcons.capsules),
                        ),
                      ),
                      Card(
                        child: IconButton(
                          onPressed: () {
                            context.router.pop();
                          },
                          icon: const FaIcon(FontAwesomeIcons.xmark),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            floatingActionButton: const NextDayButton()),
      ),
    );
  }
}
