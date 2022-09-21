import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/constants.dart';
import '../../../utilities/utilities.dart';
import '../../../widgets/widgets.dart';
import '../../tutorial/cubit/tutorial_cubit.dart';
import '../cubit/day_setting_cubit.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.settings.tr()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
              child: Text(
                LocaleKeys.localeApp.tr(),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            CustomDropDownButton(
              initialValue: context.locale.languageCode,
              items: const <String>['en'],
              onChanged: (String? state) => context.setLocale(
                Locale(state!),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
              child: Text(
                LocaleKeys.dayOnTurn.tr(),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            CustomDropDownButton(
              initialValue: context.watch<DaySettingCubit>().state.toString(),
              items: context.watch<DaySettingCubit>().dayList(),
              onChanged: (String? value) =>
                  context.read<DaySettingCubit>().change(int.parse(value as String)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
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
