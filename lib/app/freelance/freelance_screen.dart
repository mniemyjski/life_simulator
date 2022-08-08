import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/date/widgets/next_day.dart';
import 'package:life_simulator/app/game/widget/app_bar_stats.dart';
import 'package:life_simulator/config/routes/routes.gr.dart';

class FreelanceScreen extends StatelessWidget {
  const FreelanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const AppBarStats(),
            Card(
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'Fame',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '0',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(),
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
              FloatingActionButton(
                heroTag: null,
                onPressed: () => context.router.push(const FreelanceJobsRoute()),
                child: const FaIcon(FontAwesomeIcons.plus),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
