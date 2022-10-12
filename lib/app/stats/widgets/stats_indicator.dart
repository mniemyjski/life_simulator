import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../constants/constants.dart';
import '../cubit/stats_cubit.dart';
import 'stats_element.dart';

class StatsIndicator extends StatelessWidget {
  const StatsIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _health = 1;
    double _satisfaction = 1;
    double _tiredness = 1;

    context.watch<StatsCubit>().state.whenOrNull(loaded: (stats) {
      _health = stats.health;
      _satisfaction = stats.satisfaction;
      _tiredness = stats.tiredness;
    });

    return GestureDetector(
      onTap: () => null,
      child: Padding(
        padding: const EdgeInsets.only(left: 4, right: 4),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: StatsElement(
                name: LocaleKeys.satisfaction.tr(),
                color: Colors.yellow[900]!.withOpacity(0.7),
                value: _satisfaction,
              ),
            ),
            Expanded(
              child: StatsElement(
                name: LocaleKeys.tiredness.tr(),
                color: Colors.blue[800]!.withOpacity(0.7),
                value: _tiredness,
              ),
            ),
            Expanded(
              child: StatsElement(
                name: LocaleKeys.health.tr(),
                color: Colors.red[800]!.withOpacity(0.7),
                value: _health,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
