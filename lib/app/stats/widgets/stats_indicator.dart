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
        padding: const EdgeInsets.all(2.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            StatsElement(
              name: LocaleKeys.satisfaction.tr(),
              color: Colors.yellow[600]!.withOpacity(0.7),
              value: _satisfaction,
            ),
            StatsElement(
              name: LocaleKeys.tiredness.tr(),
              color: Colors.blue[600]!.withOpacity(0.7),
              value: _tiredness,
            ),
            StatsElement(
              name: LocaleKeys.health.tr(),
              color: Colors.red[800]!.withOpacity(0.7),
              value: _health,
            ),
          ],
        ),
      ),
    );
  }
}
