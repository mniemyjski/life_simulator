import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../date/cubit/date_cubit.dart';
import '../../money/cubit/money/money_cubit.dart';
import '../../stats/widgets/stats_indicator.dart';
import '../../time_spend/widgets/time_spend_indicator.dart';

class AppBarGame extends StatelessWidget with PreferredSizeWidget {
  final Key? keyTimeSpend;
  final Key? keyStats;
  final Key? keyDate;
  final Key? keyMoney;

  final String title;
  final bool? showTimeSpend;
  final bool? showStats;

  const AppBarGame({
    Key? key,
    this.keyTimeSpend,
    this.keyStats,
    this.keyDate,
    this.keyMoney,
    this.showTimeSpend = true,
    this.showStats = true,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title),
            Row(
              children: [
                Card(
                  key: keyMoney,
                  color: Colors.grey.withOpacity(0.2),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '${context.watch<MoneyCubit>().state.maybeWhen(orElse: () => 0.0, loaded: (v) => v).toMoney()}',
                      style: TextStyle(color: Theme.of(context).textTheme.bodyText2!.color),
                    ),
                  ),
                ),
                Card(
                    key: keyDate,
                    color: Colors.grey.withOpacity(0.2),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        context
                            .watch<DateCubit>()
                            .state
                            .maybeWhen(orElse: () => "", loaded: (date) => date.onlyDateToString()),
                        style: TextStyle(color: Theme.of(context).textTheme.bodyText2!.color),
                      ),
                    )),
              ],
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromWidth(0.0),
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 12, bottom: 2),
            child: Column(
              children: [
                if (showStats!) StatsIndicator(key: keyStats),
                if (showTimeSpend!) TimeSpend(key: keyTimeSpend),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(45 + (showTimeSpend! ? 30 : 0) + (showStats! ? 30 : 0));
}
