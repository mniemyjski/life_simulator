import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/config/injectable/injection.dart';
import 'package:richeable/constants/sounds.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../config/routes/routes.gr.dart';
import '../../../constants/constants.dart';
import '../../time_spend/cubit/time_spend_cubit.dart';
import '../../time_spend/models/time_bonus/time_bonus_model.dart';
import '../cubit/date_cubit.dart';

class NextDayButton extends StatelessWidget {
  const NextDayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final player = getIt<Injection>().player;

    return FloatingActionButton(
      heroTag: null,
      onPressed: () async {
        player.setAsset(Sounds.click());
        player.play();

        if (!context.read<TimeSpendCubit>().checkBonusSource(ETypeBonusSource.house)) {
          bool? areYouSure = await showDialog<bool>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: Text(LocaleKeys.youAreHomeless.tr()),
              content: Text(LocaleKeys.areYouSureGoToNextDay.tr()),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: Text(LocaleKeys.cancel.tr()),
                ),
                TextButton(
                  onPressed: () {
                    context.router.push(const GameRoute());
                    context.router.push(const PersonalityRoute());
                  },
                  child: Text(LocaleKeys.rentHouse.tr()),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context, true),
                  child: Text(LocaleKeys.confirm.tr()),
                ),
              ],
            ),
          );

          if (areYouSure ?? false) {
            context.read<DateCubit>().nextDay();
          }
        } else {
          context.read<DateCubit>().nextDay();
        }
      },
      child: const FaIcon(FontAwesomeIcons.hourglass),
    );
  }
}
