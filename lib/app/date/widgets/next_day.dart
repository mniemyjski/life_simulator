import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/time_spend/cubit/time_spend_cubit.dart';
import 'package:life_simulator/app/time_spend/models/bonus/bonus_model.dart';
import 'package:life_simulator/constants/constants.dart';

import '../cubit/date_cubit.dart';

class NextDayButton extends StatelessWidget {
  const NextDayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
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
