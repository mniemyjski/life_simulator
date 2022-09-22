import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/app/settings/cubit/audio_cubit.dart';

import '../../../constants/constants.dart';
import '../../../utilities/utilities.dart';
import '../../../widgets/widgets.dart';
import '../../tutorial/cubit/tutorial_cubit.dart';
import '../cubit/day_setting_cubit.dart';
import '../models/audio_model.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.settings.tr()),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 4.0, bottom: 4.0, left: 5),
              child: Text(
                LocaleKeys.localeApp.tr(),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: CustomDropDownButton(
                initialValue: context.locale.languageCode,
                items: const <String>['en'],
                onChanged: (String? state) => context.setLocale(
                  Locale(state!),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 4.0, left: 5.0),
              child: Text(
                LocaleKeys.dayOnTurn.tr(),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: CustomDropDownButton(
                initialValue: context.watch<DaySettingCubit>().state.toString(),
                items: context.watch<DaySettingCubit>().dayList(),
                onChanged: (String? value) =>
                    context.read<DaySettingCubit>().change(int.parse(value as String)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6, top: 8.0),
              child: Text('${LocaleKeys.sounds.tr()}:'),
            ),
            BlocBuilder<AudioCubit, Audio>(
              builder: (context, state) {
                return Card(
                  child: Slider(
                    value: state.sounds,
                    min: 0,
                    max: 1,
                    divisions: 100,
                    onChanged: (v) => context.read<AudioCubit>().changeSoundsVolume(v),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6, top: 8.0),
              child: Text('${LocaleKeys.music.tr()}:'),
            ),
            BlocBuilder<AudioCubit, Audio>(
              builder: (context, state) {
                return Card(
                  child: Slider(
                    value: state.music,
                    min: 0,
                    max: 1,
                    divisions: 100,
                    onChanged: (v) => context.read<AudioCubit>().changeMusicVolume(v),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 8.0, left: 4, right: 4),
              child: CustomButton(
                  onPressed: () => context.read<TutorialCubit>().reset(),
                  child: Text(LocaleKeys.resetTutorial.tr())),
            ),
          ],
        ),
      ),
    );
  }
}
