import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/app/settings/cubit/day_setting_cubit.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../config/routes/routes.gr.dart';
import '../../../constants/constants.dart';
import '../../settings/cubit/audio_cubit.dart';
import '../../time_spend/cubit/time_spend_cubit.dart';
import '../../time_spend/models/time_bonus/time_bonus_model.dart';
import '../cubit/date_cubit.dart';

class NextDayButton extends StatefulWidget {
  const NextDayButton({Key? key}) : super(key: key);

  @override
  State<NextDayButton> createState() => _NextDayButtonState();
}

class _NextDayButtonState extends State<NextDayButton> {
  bool show = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (show)
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(28)),
                    color: Theme.of(context).primaryColor.withOpacity(1),
                  ),
                  child: FloatingActionButton(
                      backgroundColor: Colors.white70,
                      onPressed: () {
                        context.read<DaySettingCubit>().change(1);
                        setState(() => show = !show);
                      },
                      child: Text(
                        '1',
                        style:
                            Theme.of(context).textTheme.headline1!.copyWith(color: Colors.black87),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(28)),
                    color: Theme.of(context).primaryColor.withOpacity(1),
                  ),
                  child: FloatingActionButton(
                      backgroundColor: Colors.white70,
                      onPressed: () {
                        context.read<DaySettingCubit>().change(5);
                        setState(() => show = !show);
                      },
                      child: Text(
                        '5',
                        style:
                            Theme.of(context).textTheme.headline1!.copyWith(color: Colors.black87),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(28)),
                    color: Theme.of(context).primaryColor.withOpacity(1),
                  ),
                  child: FloatingActionButton(
                      backgroundColor: Colors.white70,
                      onPressed: () {
                        context.read<DaySettingCubit>().change(10);
                        setState(() => show = !show);
                      },
                      child: Text(
                        '10',
                        style:
                            Theme.of(context).textTheme.headline1!.copyWith(color: Colors.black87),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(28)),
                    color: Theme.of(context).primaryColor.withOpacity(1),
                  ),
                  child: FloatingActionButton(
                      backgroundColor: Colors.white70,
                      onPressed: () {
                        context.read<DaySettingCubit>().change(30);
                        setState(() => show = !show);
                      },
                      child: Text(
                        '30',
                        style:
                            Theme.of(context).textTheme.headline1!.copyWith(color: Colors.black87),
                      )),
                ),
              ),
            ],
          ),
        InkWell(
          onLongPress: () => setState(() => show = !show),
          child: FloatingActionButton(
            heroTag: null,
            onPressed: () async {
              context.read<AudioCubit>().getSounds(AudioCollection.click()).play();

              if (!context.read<TimeSpendCubit>().checkBonusSource(ETypeBonusSource.house)) {
                bool? areYouSure = await showDialog<bool>(
                  context: context,
                  builder: (BuildContext context) => _buildAlertDialog(context),
                );
                if (!(areYouSure ?? false)) return;
              }

              var cancel = BotToast.showLoading();
              context.read<DateCubit>().nextDay();
              await Future.delayed(const Duration(milliseconds: 200));
              cancel();
            },
            child: const FaIcon(FontAwesomeIcons.hourglass),
          ),
        ),
      ],
    );
  }

  AlertDialog _buildAlertDialog(BuildContext context) {
    return AlertDialog(
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
    );
  }
}
