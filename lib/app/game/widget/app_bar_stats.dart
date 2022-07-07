import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_simulator/app/date/widgets/date_view.dart';
import 'package:life_simulator/app/money/cubit/money_cubit.dart';
import 'package:life_simulator/utilities/utilities.dart';

import '../../stats/widgets/stats_indicator.dart';
import '../../time_spend/widgets/time_spend_indicator.dart';

class AppBarStats extends StatelessWidget {
  const AppBarStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: double.infinity,
        height: 100,
        color: Theme.of(context).primaryColor,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DateChange(),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '${context.watch<MoneyCubit>().state.toMoney()}',
                        style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color),
                      ),
                    ),
                  ),
                  StatsIndicator(),
                ],
              ),
              TimeSpend(),
            ],
          ),
        ),
      ),
    );
  }
}
