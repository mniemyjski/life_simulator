import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../constants/constants.dart';
import '../date/widgets/next_day.dart';
import '../game/widget/app_bar_stats.dart';
import 'cubit/time_spend_cubit.dart';
import 'models/time_bonus/time_bonus_model.dart';

class TimeSpendScreen extends StatelessWidget {
  const TimeSpendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          const AppBarStats(),
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
                                return Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            style: Theme.of(context).textTheme.bodyText1,
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: '${LocaleKeys.source.tr()}: ',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
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
                                            style: Theme.of(context).textTheme.bodyText1,
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: '${Enums.toText(element.eTypeBonus)}: ',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
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
                          SizedBox(height: 80),
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
    ));
  }

  Builder buildNonChangedElement({required String name, required int value}) {
    return Builder(builder: (context) {
      return Row(
        children: [
          Expanded(
            child: Card(
              child: Container(
                width: double.infinity,
                height: 47,
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    name,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: Container(
              width: 48,
              height: 48,
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  value.toString(),
                  style: Theme.of(context).textTheme.bodyText1,
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
            child: Card(
                child: Container(
              height: 48,
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  name,
                  style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color),
                ),
              ),
            )),
          ),
          Card(
            child: Container(
              width: 48,
              height: 48,
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  value.toString(),
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          ),
          Card(child: IconButton(onPressed: add, icon: const FaIcon(Icons.add))),
          Card(child: IconButton(onPressed: remove, icon: const FaIcon(Icons.remove))),
        ],
      );
    });
  }
}
