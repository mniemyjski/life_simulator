import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/widgets.dart';

import '../../config/routes/routes.gr.dart';
import '../../constants/constants.dart';
import '../date/widgets/next_day.dart';
import '../game/widget/app_bar_stats.dart';
import 'cubit/done/freelance_done_cubit.dart';
import 'cubit/fame/fame_cubit.dart';
import 'models/freelance_done/freelance_done_model.dart';

class FreelanceScreen extends StatelessWidget {
  const FreelanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
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
                      if (freelances.isEmpty)
                        return Center(
                          child: Text(LocaleKeys.youDontHaveAnyProduct.tr()),
                        );

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
          const SizedBox(height: 85),
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
    );
  }
}
