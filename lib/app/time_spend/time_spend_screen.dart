import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/time_spend/cubit/time_spend_cubit.dart';
import 'package:life_simulator/utilities/utilities.dart';

import '../../constants/constants.dart';
import '../date/widgets/next_day.dart';
import '../game/widget/app_bar_stats.dart';

class TimeSpendScreen extends StatelessWidget {
  const TimeSpendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          AppBarStats(),
          buildElement(
            name: LocaleKeys.learn.tr(),
            add: () {
              String? toast = context.read<TimeSpendCubit>().changeLearn(1);
              if (toast != null) BotToast.showText(text: toast, align: Alignment(0.1, 0.05));
            },
            remove: () {
              String? toast = context.read<TimeSpendCubit>().changeLearn(-1);
              if (toast != null) BotToast.showText(text: toast, align: Alignment(0.1, 0.05));
            },
          ),
          buildElement(
            name: LocaleKeys.relax.tr(),
            add: () {
              String? toast = context.read<TimeSpendCubit>().changeRelax(1);
              if (toast != null) BotToast.showText(text: toast, align: Alignment(0.1, 0.05));
            },
            remove: () {
              String? toast = context.read<TimeSpendCubit>().changeRelax(-1);
              if (toast != null) BotToast.showText(text: toast, align: Alignment(0.1, 0.05));
            },
          ),
          buildElement(
            name: LocaleKeys.sleep.tr(),
            add: () {
              String? toast = context.read<TimeSpendCubit>().changeSleep(1);
              if (toast != null) BotToast.showText(text: toast, align: Alignment(0.1, 0.05));
            },
            remove: () {
              String? toast = context.read<TimeSpendCubit>().changeSleep(-1);
              if (toast != null) BotToast.showText(text: toast, align: Alignment(0.1, 0.05));
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
              child: FaIcon(FontAwesomeIcons.arrowRotateLeft),
            ),
            NextDayButton(),
          ],
        ),
      ),
    ));
  }

  Builder buildElement({required String name, VoidCallback? add, VoidCallback? remove}) {
    return Builder(builder: (context) {
      return Row(
        children: [
          Expanded(
            child: Card(
                child: Container(
              height: 47,
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  name,
                  style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color),
                ),
              ),
            )),
          ),
          Card(child: IconButton(onPressed: add, icon: FaIcon(Icons.add))),
          Card(child: IconButton(onPressed: remove, icon: FaIcon(Icons.remove))),
        ],
      );
    });
  }
}
