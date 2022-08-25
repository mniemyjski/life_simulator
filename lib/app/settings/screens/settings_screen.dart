import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_simulator/app/settings/cubit/day_setting_cubit.dart';

import '../../../constants/constants.dart';
import '../../../utilities/utilities.dart';
import '../../../widgets/widgets.dart';
import '../cubit/dark_mode_cubit.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.settings.tr()),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 300),
                  child: CustomDropDownButtonOld(
                    name: LocaleKeys.localeApp.tr(),
                    value: context.locale.languageCode,
                    list: const <String>['pl', 'en'],
                    onChanged: (String? state) => context.setLocale(Locale(state!)),
                  ),
                ),
                Row(
                  children: <Widget>[
                    BlocBuilder<DarkModeCubit, bool>(
                      builder: (context, state) {
                        return Switch(
                          value: state,
                          onChanged: (state) {
                            context.read<DarkModeCubit>().change();
                          },
                        );
                      },
                    ),
                    Text(
                      LocaleKeys.darkMode.tr(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButtonHideUnderline(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
