import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/constants/constants.dart';
import 'package:richeable/widgets/widgets.dart';

import '../../widgets/custom_card.dart';
import '../date/widgets/next_day.dart';
import '../game/widget/app_bar_game.dart';
import 'cubit/medicines_cubit.dart';
import 'models/medicine_model.dart';

class MedicinesScreen extends StatelessWidget {
  const MedicinesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBarGame(title: LocaleKeys.medicine.tr()),
      body: Column(
        children: [
          Expanded(child: BlocBuilder<MedicinesCubit, MedicinesState>(
            builder: (context, state) {
              return state.maybeWhen(
                  orElse: () => Container(),
                  loaded: (medicines, currentDate) {
                    return ListView.builder(
                        itemCount: medicines.length,
                        itemBuilder: (context, index) {
                          final Medicine medicine = medicines[index];

                          TextStyle txtStyle = Theme.of(context).textTheme.bodyText2!;

                          return CustomCard(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 2.0),
                                        child: Text(
                                          medicine.name,
                                          style: txtStyle,
                                        ),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          style: txtStyle,
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: 'Cost: ',
                                              style: txtStyle.copyWith(fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(
                                              text: '${medicine.cost.toInt()}\$',
                                            ),
                                          ],
                                        ),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          style: txtStyle,
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: 'Duration: ',
                                              style: txtStyle.copyWith(fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(
                                              text: '${medicine.leftDuration}/${medicine.duration}',
                                            ),
                                          ],
                                        ),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          style: txtStyle,
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: 'Health multiple: ',
                                              style: txtStyle.copyWith(fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(
                                              text: '${(medicine.health * 100).toInt()}%',
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  if (!medicine.active)
                                    IconButton(
                                      onPressed: () {
                                        var toast = context.read<MedicinesCubit>().buy(medicine);
                                        if (toast != null) {
                                          BotToast.showText(
                                              text: toast, align: const Alignment(0.1, 0.05));
                                        }
                                      },
                                      icon: const FaIcon(
                                        FontAwesomeIcons.plus,
                                        color: Colors.white,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          );
                        });
                  });
            },
          ))
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
            const SizedBox(width: 56),
          ],
        ),
      ),
    );
  }
}
