import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/app/freelance/widgets/advertisement_chooser.dart';
import 'package:richeable/app/money/cubit/money/money_cubit.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/widgets.dart';

import '../../config/routes/routes.gr.dart';
import '../../constants/constants.dart';
import '../date/widgets/next_day.dart';
import '../game/widget/app_bar_game.dart';
import 'cubit/done/freelance_done_cubit.dart';
import 'cubit/fame/fame_cubit.dart';
import 'models/freelance_done/freelance_done_model.dart';

class FreelanceScreen extends StatelessWidget {
  const FreelanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBarGame(title: LocaleKeys.freelances.tr()),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Card(
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '${LocaleKeys.fame.tr()}:',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          context.watch<FameCubit>().state.maybeWhen(
                              orElse: () => '0',
                              loaded: (v, currentDate) => v.roundToDouble().toExp()),
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                  child: Container(
                height: 50,
                width: 75,
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('${LocaleKeys.dailyFame.tr()}:',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontWeight: FontWeight.bold)),
                    Text(context.watch<FreelanceDoneCubit>().getDailyFame().toExp(),
                        style: Theme.of(context).textTheme.bodyText1),
                  ],
                ),
              )),
              Card(
                  child: Container(
                height: 50,
                width: 75,
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('${LocaleKeys.value.tr()}:',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontWeight: FontWeight.bold)),
                    Text(context.watch<FreelanceDoneCubit>().getValue().toMoney(),
                        style: Theme.of(context).textTheme.bodyText1),
                  ],
                ),
              )),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            child: Divider(
              color: Colors.white70,
            ),
          ),
          Expanded(
            child: BlocBuilder<FreelanceDoneCubit, FreelanceDoneState>(
              builder: (context, state) {
                return state.maybeWhen(
                    orElse: () => Container(),
                    loaded: (freelances) {
                      if (freelances.isEmpty) {
                        return Center(
                          child: Text(LocaleKeys.youDontHaveAnyProduct.tr()),
                        );
                      }

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
                                            RichText(
                                              text: TextSpan(
                                                style: Theme.of(context).textTheme.bodyText1,
                                                children: <TextSpan>[
                                                  TextSpan(
                                                    text: '${LocaleKeys.end.tr()}: ',
                                                    style: const TextStyle(
                                                        fontWeight: FontWeight.bold),
                                                  ),
                                                  TextSpan(
                                                      text: Enums.toText(
                                                          element.next3.onlyDateToString())),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        RatingBarIndicator(
                                          rating: element.rating.toDouble(),
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
                                    width: 75,
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
                                    width: 75,
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
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: null,
              onPressed: () => context.router.pop(),
              child: const FaIcon(FontAwesomeIcons.arrowRotateLeft),
            ),
            const NextDayButton(),
            SpeedDial(
              animatedIcon: AnimatedIcons.menu_close,
              spaceBetweenChildren: 4,
              spacing: 15,
              overlayColor: Colors.black,
              overlayOpacity: 0.5,
              children: [
                SpeedDialChild(
                  labelWidget: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Container(
                        width: 100,
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            LocaleKeys.create.tr(),
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  child: const FaIcon(FontAwesomeIcons.plus),
                  onTap: () => context.router.push(const FreelanceJobsRoute()),
                ),
                SpeedDialChild(
                  labelWidget: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Container(
                        width: 100,
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            LocaleKeys.advertisement.tr(),
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  child: const FaIcon(FontAwesomeIcons.rectangleAd),
                  onTap: () {
                    context.read<MoneyCubit>().state.maybeWhen(orElse: () {
                      BotToast.showText(
                          text: LocaleKeys.tryAgain.tr(), align: const Alignment(0.1, 0.05));
                    }, loaded: (money) {
                      if (money > 10) {
                        showModalBottomSheet<String>(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(8.0))),
                          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) {
                            return AdvertisementChooser(money);
                          },
                        );
                      } else {
                        BotToast.showText(
                            text: LocaleKeys.notEnoughMoney.tr(),
                            align: const Alignment(0.1, 0.05));
                      }
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
