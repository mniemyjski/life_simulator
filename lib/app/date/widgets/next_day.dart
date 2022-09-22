import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
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
  late OverlayEntry entry;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onLongPress: () {
            final overlay = Overlay.of(context);

            entry = OverlayEntry(builder: (context) {
              return _buildBody(context);
            });

            overlay!.insert(entry);
          },
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
              if (mounted) context.read<DateCubit>().nextDay();
              await Future.delayed(const Duration(milliseconds: 200));
              cancel();
            },
            child: Badge(
              badgeColor: Theme.of(context).primaryColor.withOpacity(1),
              padding: const EdgeInsets.all(4),
              badgeContent: Text(
                context.watch<DaySettingCubit>().state.toString(),
                style: const TextStyle(fontSize: 8),
              ),
              toAnimate: false,
              child: const FaIcon(FontAwesomeIcons.hourglass),
            ),
          ),
        ),
      ],
    );
  }

  GestureDetector _buildBody(BuildContext context) {
    return GestureDetector(
      onTap: () => entry.remove(),
      child: Container(
        color: Colors.black.withOpacity(0.5),
        padding: const EdgeInsets.only(bottom: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(28)),
                      color: Theme.of(context).primaryColor.withOpacity(1),
                    ),
                    child: FloatingActionButton(
                        heroTag: null,
                        backgroundColor: Colors.white70,
                        onPressed: () {
                          context.read<DaySettingCubit>().change(1);
                          entry.remove();
                        },
                        child: Text(
                          '1',
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(color: Colors.black87),
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
                        heroTag: null,
                        backgroundColor: Colors.white70,
                        onPressed: () {
                          context.read<DaySettingCubit>().change(5);
                          entry.remove();
                        },
                        child: Text(
                          '5',
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(color: Colors.black87),
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
                        heroTag: null,
                        backgroundColor: Colors.white70,
                        onPressed: () {
                          context.read<DaySettingCubit>().change(10);
                          entry.remove();
                        },
                        child: Text(
                          '10',
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(color: Colors.black87),
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
                        heroTag: null,
                        backgroundColor: Colors.white70,
                        onPressed: () {
                          context.read<DaySettingCubit>().change(30);
                          entry.remove();
                        },
                        child: Text(
                          '30',
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(color: Colors.black87),
                        )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
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
