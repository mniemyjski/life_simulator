import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/date/widgets/next_day.dart';
import 'package:life_simulator/app/freelance/cubit/done/freelance_done_cubit.dart';
import 'package:life_simulator/app/freelance/cubit/fame/fame_cubit.dart';
import 'package:life_simulator/app/freelance/models/freelance_done/freelance_done_model.dart';
import 'package:life_simulator/app/game/widget/app_bar_stats.dart';
import 'package:life_simulator/config/routes/routes.gr.dart';
import 'package:life_simulator/utilities/utilities.dart';

import '../../constants/constants.dart';

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
                        context
                            .watch<FameCubit>()
                            .state
                            .maybeWhen(orElse: () => '0', loaded: (v) => v.toInt().toString()),
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: BlocBuilder<FreelanceDoneCubit, FreelanceDoneState>(
                builder: (context, state) {
                  return state.maybeWhen(
                      orElse: () => Container(),
                      loaded: (freelances) {
                        return ListView.builder(
                            itemCount: freelances.length,
                            itemBuilder: (context, index) {
                              FreelanceDone element = freelances[index];

                              return Row(
                                children: [
                                  Expanded(
                                    child: Card(
                                        child: Container(
                                      height: 60,
                                      padding: const EdgeInsets.all(4.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              RichText(
                                                text: TextSpan(
                                                  style: Theme.of(context).textTheme.bodyText1,
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: '${LocaleKeys.name.tr()}: ',
                                                      style: const TextStyle(
                                                          fontWeight: FontWeight.bold),
                                                    ),
                                                    TextSpan(text: element.name),
                                                  ],
                                                ),
                                              ),
                                              RichText(
                                                text: TextSpan(
                                                  style: Theme.of(context).textTheme.bodyText1,
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: '${LocaleKeys.type.tr()}: ',
                                                      style: const TextStyle(
                                                          fontWeight: FontWeight.bold),
                                                    ),
                                                    TextSpan(
                                                        text: Enums.toText(element.eTypeFreelance)),
                                                  ],
                                                ),
                                              ),
                                              RichText(
                                                text: TextSpan(
                                                  style: Theme.of(context).textTheme.bodyText1,
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: '${LocaleKeys.dateCre.tr()}: ',
                                                      style: const TextStyle(
                                                          fontWeight: FontWeight.bold),
                                                    ),
                                                    TextSpan(
                                                        text: Enums.toText(
                                                            element.dateCre.onlyDateToString())),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          RatingBarIndicator(
                                            rating: element.level.toDouble(),
                                            itemBuilder: (context, index) => const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            itemCount: 5,
                                            itemSize: 10,
                                            direction: Axis.vertical,
                                          )
                                        ],
                                      ),
                                    )),
                                  ),
                                  Card(
                                    child: Container(
                                      height: 60,
                                      width: 60,
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          '${element.fame.toInt()}',
                                          style: Theme.of(context).textTheme.bodyText1,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Card(
                                    child: Container(
                                      height: 60,
                                      width: 60,
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          '${element.price.toMoney()}',
                                          style: Theme.of(context).textTheme.bodyText1,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            });
                      });
                },
              ),
            ),
            SizedBox(
              height: 85,
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
