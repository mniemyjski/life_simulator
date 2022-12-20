import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/custom_card.dart';

import '../../date/cubit/date_cubit.dart';
import '../../monetization/my_banner.dart';
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

  final bool showAdd = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 120,
      title: Column(
        children: [
          if (showAdd) const MyBanner(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              Row(
                children: [
                  CustomCard(
                    key: keyMoney,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '${context.watch<MoneyCubit>().state.maybeWhen(orElse: () => 0.0, loaded: (v) => v).toMoney()}',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                  ),
                  CustomCard(
                      key: keyDate,
                      color: Colors.grey.withOpacity(0.2),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          context.watch<DateCubit>().state.maybeWhen(
                              orElse: () => "", loaded: (date) => date.onlyDateToString()),
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      )),
                ],
              ),
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
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(45 + (showTimeSpend! ? 30 : 0) + (showStats! ? 30 : 0) + (showAdd ? 50 : 0));
}
