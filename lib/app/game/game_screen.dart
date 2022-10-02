import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/app/assets/cubit/build/build_asset_cubit.dart';
import 'package:richeable/app/event/cubit/event_cubit.dart';
import 'package:richeable/app/freelance/cubit/job/freelance_job_cubit.dart';
import 'package:richeable/app/learning/cubit/learning_cubit.dart';
import 'package:richeable/app/loading/cubit/loading_cubit.dart';
import 'package:richeable/app/tutorial/cubit/tutorial_cubit.dart';
import 'package:richeable/app/tutorial/widgets/tutorial_widget.dart';
import 'package:richeable/constants/constants.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/widgets.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '../../config/routes/routes.gr.dart';
import '../date/widgets/next_day.dart';
import '../event/widgets/events_list.dart';
import '../rules/cubit/rules_cubit.dart';
import '../settings/cubit/audio_cubit.dart';
import '../tutorial/models/tutorial_model.dart';
import 'widget/app_bar_stats.dart';
import 'widget/button_element.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  GlobalKey keyButton = GlobalKey();
  GlobalKey keyButton1 = GlobalKey();
  GlobalKey keyButton2 = GlobalKey();
  GlobalKey keyButton3 = GlobalKey();
  GlobalKey keyButton4 = GlobalKey();
  GlobalKey keyButton5 = GlobalKey();
  GlobalKey keyButton6 = GlobalKey();
  GlobalKey keyButton7 = GlobalKey();
  GlobalKey keyButton8 = GlobalKey();
  GlobalKey keyButton9 = GlobalKey();
  GlobalKey keyButton10 = GlobalKey();
  GlobalKey keyButton11 = GlobalKey();
  GlobalKey keyButton12 = GlobalKey();
  GlobalKey keyButton13 = GlobalKey();
  GlobalKey keyButton14 = GlobalKey();
  GlobalKey keyButton15 = GlobalKey();
  List<TargetFocus> targets = [];
  DateTime? last;
  late OverlayEntry? entry;
  late OverlayState? overlay;

  showTutorial() {
    TutorialCoachMark(
      targets: targets,
      onFinish: () => context.read<TutorialCubit>().main(),
      onSkip: () => context.read<TutorialCubit>().main(),
      hideSkip: true,
    ).show(context: context);
  }

  @override
  void initState() {
    targets.addAll(
      [
        tutorialWidget(
          keyButton: keyButton,
          title: LocaleKeys.personalScreen.tr(),
          description: LocaleKeys.personalScreenDesc.tr(),
        ),
        tutorialWidget(
          keyButton: keyButton1,
          title: LocaleKeys.transactionsScreen.tr(),
          description: LocaleKeys.transactionsScreenDesc.tr(),
        ),
        tutorialWidget(
          keyButton: keyButton2,
          title: LocaleKeys.jobScreen.tr(),
          description: LocaleKeys.jobScreenDesc.tr(),
        ),
        tutorialWidget(
          keyButton: keyButton3,
          title: LocaleKeys.freelanceScreen.tr(),
          description: LocaleKeys.freelanceScreenDesc.tr(),
        ),
        tutorialWidget(
          keyButton: keyButton4,
          title: LocaleKeys.assetsScreen.tr(),
          description: LocaleKeys.assetsScreenDesc.tr(),
        ),
        tutorialWidget(
          keyButton: keyButton5,
          title: LocaleKeys.businessScreen.tr(),
          description: LocaleKeys.businessScreenDesc.tr(),
        ),
        tutorialWidget(
          keyButton: keyButton6,
          title: LocaleKeys.stockMarketScreen.tr(),
          description: LocaleKeys.stockMarketScreenDesc.tr(),
        ),
        tutorialWidget(
          keyButton: keyButton7,
          title: LocaleKeys.learningScreen.tr(),
          description: LocaleKeys.learningScreenDesc.tr(),
        ),
        tutorialWidget(
          keyButton: keyButton8,
          title: LocaleKeys.bankScreen.tr(),
          description: LocaleKeys.bankScreenDesc.tr(),
        ),
        tutorialWidget(
          keyButton: keyButton9,
          title: LocaleKeys.medicineScreen.tr(),
          description: LocaleKeys.medicineScreenDesc.tr(),
        ),
        tutorialWidget(
          keyButton: keyButton10,
          title: LocaleKeys.nextTurn.tr(),
          description: LocaleKeys.nextTurnDesc.tr(),
        ),
        tutorialWidget(
          keyButton: keyButton11,
          align: ContentAlign.bottom,
          title: LocaleKeys.currentDate.tr(),
          description: LocaleKeys.currentDateDesc.tr(),
        ),
        tutorialWidget(
          keyButton: keyButton12,
          align: ContentAlign.bottom,
          title: LocaleKeys.yourMoney.tr(),
          description: LocaleKeys.yourMoneyDesc.tr(),
        ),
        tutorialWidget(
          keyButton: keyButton13,
          align: ContentAlign.bottom,
          title: LocaleKeys.yourStats.tr(),
          description: LocaleKeys.yourStatsDesc.tr(),
        ),
        tutorialWidget(
          keyButton: keyButton14,
          align: ContentAlign.bottom,
          title: LocaleKeys.timeSpendPanel.tr(),
          description: LocaleKeys.timeSpendPanelDesc.tr(),
        ),
        tutorialWidget(
          keyButton: keyButton15,
          align: ContentAlign.bottom,
          title: LocaleKeys.eventScreen.tr(),
          description: LocaleKeys.eventScreenDesc.tr(),
        ),
      ],
    );

    overlay = Overlay.of(context);

    entry = OverlayEntry(builder: (context) {
      return Container(
        color: Colors.black.withOpacity(0.5),
        child: const CustomLoadingWidget(),
      );
    });

    super.initState();
  }

  @override
  void didChangeDependencies() {
    Future.delayed(const Duration(milliseconds: 300), () {
      Tutorial tutorial = context.read<TutorialCubit>().state;
      if (!tutorial.main) showTutorial();
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<LoadingCubit, LoadingState>(
          listenWhen: (oldState, newState) => oldState.runtimeType != newState.runtimeType,
          listener: (context, state) {
            state.when(
              loading: (names) {
                if (!entry!.mounted) overlay!.insert(entry!);
              },
              loaded: () {
                if (entry != null) entry!.remove();
              },
            );
          },
        ),
        BlocListener<RulesCubit, RulesState>(
          listener: (context, state) {
            state.whenOrNull(loaded: (rules) {
              if (rules) {
                BotToast.showText(
                    text: LocaleKeys.endGame.tr(),
                    contentPadding: const EdgeInsets.all(18),
                    align: const Alignment(0.1, 0.05));
                context.router.push(const HomeRoute());
              }
            });
          },
        ),
        BlocListener<EventCubit, EventState>(
          listener: (context, state) {
            state.whenOrNull(loaded: (event, currentDate) {
              // if ((last ?? '') != event.first.datCre && context.router.current is GameScreen) {
              //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              //     behavior: SnackBarBehavior.floating,
              //     content: Text(event.first.name),
              //     action: SnackBarAction(
              //       label: 'Undo',
              //       onPressed: () {},
              //     ),
              //   ));
              //
              //   last = event.first.datCre;
              // }
            });
          },
        ),
      ],
      child: CustomScaffold(
          body: Column(
            children: [
              AppBarStats(
                keyTimeSpend: keyButton14,
                keyStats: keyButton13,
                keyDate: keyButton11,
                keyMoney: keyButton12,
              ),
              Expanded(
                  child: EventsList(
                key: keyButton15,
              )),
              GridView.count(
                padding: const EdgeInsets.all(1),
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
                crossAxisCount: 6,
                shrinkWrap: true,
                children: <Widget>[
                  ButtonElement(
                    key: keyButton,
                    onPressed: () {
                      context.read<AudioCubit>().getSounds(AudioCollection.click()).play();
                      context.router.push(const PersonalityRoute());
                    },
                    icon: const FaIcon(FontAwesomeIcons.userLarge),
                  ),
                  ButtonElement(
                    key: keyButton1,
                    onPressed: () {
                      context.read<AudioCubit>().getSounds(AudioCollection.click()).play();
                      context.router.push(const TransactionsRoute());
                    },
                    icon: const FaIcon(FontAwesomeIcons.scaleBalanced),
                  ),
                  ButtonElement(
                    key: keyButton2,
                    onPressed: () {
                      context.read<AudioCubit>().getSounds(AudioCollection.click()).play();
                      context.router.push(const JobRoute());
                    },
                    icon: const FaIcon(FontAwesomeIcons.briefcase),
                  ),
                  ButtonElement(
                    key: keyButton3,
                    onPressed: () {
                      context.read<AudioCubit>().getSounds(AudioCollection.click()).play();
                      context.router.push(const FreelanceRoute());
                    },
                    icon: BlocBuilder<FreelanceJobCubit, FreelanceJobState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                            orElse: () => Container(),
                            loaded: (freelance) {
                              if (freelance.isEmpty) return const FaIcon(FontAwesomeIcons.computer);

                              return Badge(
                                padding: const EdgeInsets.all(4),
                                badgeContent: Text(
                                  freelance.length.toString(),
                                  style: const TextStyle(fontSize: 8),
                                ),
                                child: const FaIcon(FontAwesomeIcons.computer),
                              );
                            });
                      },
                    ),
                  ),
                  ButtonElement(
                    key: keyButton4,
                    onPressed: () {
                      context.read<AudioCubit>().getSounds(AudioCollection.click()).play();
                      context.router.push(const AssetsRoute());
                    },
                    icon: BlocBuilder<BuildAssetCubit, BuildAssetState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                            orElse: () => Container(),
                            loaded: (building, currentDate) {
                              if (building.isEmpty) return const FaIcon(FontAwesomeIcons.city);

                              return Badge(
                                padding: const EdgeInsets.all(4),
                                badgeContent: Text(
                                  building.length.toString(),
                                  style: const TextStyle(fontSize: 8),
                                ),
                                child: const FaIcon(FontAwesomeIcons.city),
                              );
                            });
                      },
                    ),
                  ),
                  ButtonElement(
                    key: keyButton5,
                    onPressed: () {
                      context.read<AudioCubit>().getSounds(AudioCollection.click()).play();
                      context.router.push(const BusinessesRoute());
                    },
                    icon: const FaIcon(FontAwesomeIcons.globe),
                  ),
                  ButtonElement(
                    key: keyButton6,
                    onPressed: () {
                      context.read<AudioCubit>().getSounds(AudioCollection.click()).play();
                      context.router.push(const StockMarketRoute());
                    },
                    icon: const FaIcon(FontAwesomeIcons.chartLine),
                  ),
                  ButtonElement(
                    key: keyButton7,
                    onPressed: () {
                      context.read<AudioCubit>().getSounds(AudioCollection.click()).play();
                      context.router.push(const LearningRoute());
                    },
                    icon: BlocBuilder<LearningCubit, LearningState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                            orElse: () => const FaIcon(FontAwesomeIcons.graduationCap),
                            loaded: (learnings, currentDate) {
                              if (learnings.isEmpty) {
                                return const FaIcon(FontAwesomeIcons.graduationCap);
                              }

                              return Badge(
                                padding: const EdgeInsets.all(4),
                                badgeContent: Text(
                                  learnings.length.toString(),
                                  style: const TextStyle(fontSize: 8),
                                ),
                                child: const FaIcon(FontAwesomeIcons.graduationCap),
                              );
                            });
                      },
                    ),
                  ),
                  ButtonElement(
                    key: keyButton8,
                    onPressed: () {
                      context.read<AudioCubit>().getSounds(AudioCollection.click()).play();
                      context.router.push(const BankRoute());
                    },
                    icon: const FaIcon(FontAwesomeIcons.piggyBank),
                  ),
                  ButtonElement(
                    key: keyButton9,
                    onPressed: () {
                      context.read<AudioCubit>().getSounds(AudioCollection.click()).play();
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
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 56),
                NextDayButton(key: keyButton10),
                const SizedBox(width: 56),
              ],
            ),
          )),
    );
  }
}
