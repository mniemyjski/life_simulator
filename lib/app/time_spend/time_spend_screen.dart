import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/app/game/widget/app_bar_game.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/custom_card.dart';
import 'package:richeable/widgets/widgets.dart';

import '../../constants/constants.dart';
import '../date/widgets/next_day.dart';
import 'cubit/time_spend_cubit.dart';
import 'models/time_bonus/time_bonus_model.dart';

class TimeSpendScreen extends StatelessWidget {
  const TimeSpendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBarGame(
        title: LocaleKeys.timeSpend.tr(),
        showTimeSpend: false,
      ),
      body: Column(
        children: [
          const SizedBox(height: 4),
          BlocBuilder<TimeSpendCubit, TimeSpendState>(
            builder: (context, state) {
              return state.maybeWhen(
                  orElse: () => Container(),
                  loaded: (timeSpend) {
                    List<TimeBonus> bonuses =
                        timeSpend.bonuses.where((element) => element.value != 0).toList();

                    return Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildNonChangedElement(
                            name: LocaleKeys.free.tr(),
                            value: timeSpend.free,
                          ),
                          buildNonChangedElement(
                            name: LocaleKeys.work.tr(),
                            value: timeSpend.work,
                          ),
                          buildNonChangedElement(
                            name: LocaleKeys.commuting.tr(),
                            value: timeSpend.getBonus(ETypeBonus.commuting),
                          ),
                          buildElement(
                            value: timeSpend.freelance,
                            name: LocaleKeys.freelance.tr(),
                            add: () {
                              String? toast = context.read<TimeSpendCubit>().changeFreelance(1);
                              if (toast != null) {
                                BotToast.showText(text: toast, align: const Alignment(0.1, 0.05));
                              }
                            },
                            remove: () {
                              String? toast = context.read<TimeSpendCubit>().changeFreelance(-1);
                              if (toast != null) {
                                BotToast.showText(text: toast, align: const Alignment(0.1, 0.05));
                              }
                            },
                          ),
                          buildElement(
                            value: timeSpend.learn,
                            name: LocaleKeys.learn.tr(),
                            add: () {
                              String? toast = context.read<TimeSpendCubit>().changeLearn(1);
                              if (toast != null) {
                                BotToast.showText(text: toast, align: const Alignment(0.1, 0.05));
                              }
                            },
                            remove: () {
                              String? toast = context.read<TimeSpendCubit>().changeLearn(-1);
                              if (toast != null) {
                                BotToast.showText(text: toast, align: const Alignment(0.1, 0.05));
                              }
                            },
                          ),
                          buildElement(
                            value: timeSpend.relax,
                            name: LocaleKeys.relax.tr(),
                            add: () {
                              String? toast = context.read<TimeSpendCubit>().changeRelax(1);
                              if (toast != null) {
                                BotToast.showText(text: toast, align: const Alignment(0.1, 0.05));
                              }
                            },
                            remove: () {
                              String? toast = context.read<TimeSpendCubit>().changeRelax(-1);
                              if (toast != null) {
                                BotToast.showText(text: toast, align: const Alignment(0.1, 0.05));
                              }
                            },
                          ),
                          buildElement(
                            value: timeSpend.sleep,
                            name: LocaleKeys.sleep.tr(),
                            add: () {
                              String? toast = context.read<TimeSpendCubit>().changeSleep(1);
                              if (toast != null) {
                                BotToast.showText(text: toast, align: const Alignment(0.1, 0.05));
                              }
                            },
                            remove: () {
                              String? toast = context.read<TimeSpendCubit>().changeSleep(-1);
                              if (toast != null) {
                                BotToast.showText(text: toast, align: const Alignment(0.1, 0.05));
                              }
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '${LocaleKeys.bonuses.tr()}:',
                              style: Theme.of(context).textTheme.headline1,
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: bonuses.length,
                              itemBuilder: (context, index) {
                                TimeBonus element = bonuses[index];
                                return CustomCard(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            style: Theme.of(context).textTheme.bodyText2,
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: '${LocaleKeys.source.tr()}: ',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2!
                                                    .copyWith(fontWeight: FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: Enums.toText(element.eTypeBonusSource),
                                              ),
                                            ],
                                          ),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            style: Theme.of(context).textTheme.bodyText2,
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: '${Enums.toText(element.eTypeBonus)}: ',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2!
                                                    .copyWith(fontWeight: FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: element.value.toString(),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(height: 80),
                        ],
                      ),
                    );
                  });
            },
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
            const SizedBox(width: 56),
          ],
        ),
      ),
    );
  }

  Builder buildNonChangedElement({required String name, required int value}) {
    return Builder(builder: (context) {
      return Row(
        children: [
          Expanded(
            child: CustomCard(
              child: Container(
                width: double.infinity,
                height: 47,
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    name,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ),
            ),
          ),
          CustomCard(
            child: Container(
              width: 48,
              height: 48,
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  value.toString(),
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ),
          ),
        ],
      );
    });
  }

  Builder buildElement(
      {required String name, VoidCallback? add, VoidCallback? remove, required int value}) {
    return Builder(builder: (context) {
      return Row(
        children: [
          Expanded(
            child: CustomCard(
                child: Container(
              height: 48,
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  name,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            )),
          ),
          CustomCard(
            child: Container(
              width: 48,
              height: 48,
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  value.toString(),
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ),
          ),
          CustomCard(
              child: IconButton(
                  onPressed: add,
                  icon: const FaIcon(
                    Icons.add,
                    color: Colors.white,
                  ))),
          CustomCard(
              child: IconButton(
                  onPressed: remove,
                  icon: const FaIcon(
                    Icons.remove,
                    color: Colors.white,
                  ))),
        ],
      );
    });
  }
}
