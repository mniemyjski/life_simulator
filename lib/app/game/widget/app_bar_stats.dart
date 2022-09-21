import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../date/widgets/date_view.dart';
import '../../money/cubit/money_cubit.dart';
import '../../stats/widgets/stats_indicator.dart';
import '../../time_spend/widgets/time_spend_indicator.dart';

class AppBarStats extends StatelessWidget {
  final Key? keyTimeSpend;
  final Key? keyStats;
  final Key? keyDate;
  final Key? keyMoney;

  const AppBarStats({
    Key? key,
    this.keyTimeSpend,
    this.keyStats,
    this.keyDate,
    this.keyMoney,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).primaryColor.withOpacity(0.4),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DateChange(
                  key: keyDate,
                ),
                Card(
                  key: keyMoney,
                  color: Colors.grey.withOpacity(0.2),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '${context.watch<MoneyCubit>().state.toMoney()}',
                      style: TextStyle(color: Theme.of(context).textTheme.bodyText2!.color),
                    ),
                  ),
                ),
                StatsIndicator(
                  key: keyStats,
                ),
              ],
            ),
            TimeSpend(key: keyTimeSpend),
          ],
        ),
      ),
    );
  }
}
