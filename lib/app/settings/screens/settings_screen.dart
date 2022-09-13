import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/constants.dart';
import '../../../utilities/utilities.dart';
import '../../../widgets/widgets.dart';
import '../cubit/day_setting_cubit.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              DropdownButtonHideUnderline(
                child: DropdownButton2(
                  hint: Text(
                    'Select Item',
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                  items: context
                      .watch<DaySettingCubit>()
                      .dayList()
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  value: context.watch<DaySettingCubit>().state.toString(),
                  onChanged: (value) {
                    context.read<DaySettingCubit>().change(int.parse(value as String));
                  },
                  buttonHeight: 40,
                  buttonWidth: 140,
                  itemHeight: 40,
                  buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                  buttonDecoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
