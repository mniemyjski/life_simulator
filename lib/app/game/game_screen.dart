import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/widgets/widgets.dart';

import '../../config/routes/routes.gr.dart';
import '../date/widgets/next_day.dart';
import '../event/widgets/events_list.dart';
import '../rules/cubit/rules_cubit.dart';
import 'widget/app_bar_stats.dart';
import 'widget/button_element.dart';

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
      child: CustomScaffold(
          body: Column(
            children: [
              const AppBarStats(),
              const Expanded(child: EventsList()),
              GridView.count(
                padding: const EdgeInsets.all(1),
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
                crossAxisCount: 6,
                shrinkWrap: true,
                children: <Widget>[
                  ButtonElement(
                    onPressed: () {
                      context.router.push(const PersonalityRoute());
                    },
                    icon: const FaIcon(FontAwesomeIcons.userLarge),
                  ),
                  ButtonElement(
                    onPressed: () {
                      context.router.push(const TransactionsRoute());
                    },
                    icon: const FaIcon(FontAwesomeIcons.scaleBalanced),
                  ),
                  ButtonElement(
                    onPressed: () {
                      context.router.push(const JobRoute());
                    },
                    icon: const FaIcon(FontAwesomeIcons.briefcase),
                  ),
                  ButtonElement(
                    onPressed: () {
                      context.router.push(const FreelanceRoute());
                    },
                    icon: const FaIcon(FontAwesomeIcons.computer),
                  ),
                  ButtonElement(
                    onPressed: () {
                      context.router.push(const AssetsRoute());
                    },
                    icon: const FaIcon(FontAwesomeIcons.city),
                  ),
                  ButtonElement(
                    onPressed: null,
                    icon: const FaIcon(FontAwesomeIcons.globe),
                  ),
                  ButtonElement(
                    onPressed: () {
                      context.router.push(const StockMarketRoute());
                    },
                    icon: const FaIcon(FontAwesomeIcons.chartLine),
                  ),
                  ButtonElement(
                    onPressed: () {
                      context.router.push(const LearningRoute());
                    },
                    icon: const FaIcon(FontAwesomeIcons.graduationCap),
                  ),
                  ButtonElement(
                    onPressed: () {
                      context.router.push(const BankRoute());
                    },
                    icon: const FaIcon(FontAwesomeIcons.piggyBank),
                  ),
                  ButtonElement(
                    onPressed: () {
                      context.router.push(const MedicinesRoute());
                    },
                    icon: const FaIcon(FontAwesomeIcons.capsules),
                  ),
                  ButtonElement(
                    onPressed: () {
                      context.router.pop();
                    },
                    icon: const FaIcon(FontAwesomeIcons.xmark),
                  ),
                ],
              ),
              const SizedBox(height: 80),
            ],
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SizedBox(width: 45),
              NextDayButton(),
              SizedBox(width: 45),
            ],
          )),
    );
  }
}
