import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                color: Colors.yellow[900],
                value: _satisfaction,
                child: const Icon(
                  FontAwesomeIcons.faceSmileWink,
                  size: 10,
                  color: Colors.white70,
                ),
              ),
            ),
            Expanded(
              child: StatsElement(
                color: Colors.blue[800],
                value: _tiredness,
                child: const Icon(
                  FontAwesomeIcons.bed,
                  size: 10,
                  color: Colors.white70,
                ),
              ),
            ),
            Expanded(
              child: StatsElement(
                color: Colors.red[800],
                value: _health,
                child: const Icon(
                  FontAwesomeIcons.heart,
                  size: 10,
                  color: Colors.white70,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
