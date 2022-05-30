import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/constants.dart';
import '../../../utilities/utilities.dart';
import '../../../widgets/widgets.dart';
import '../cubit/dark_mode_cubit.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: CustomDropDownButton(
                  name: LocaleKeys.localeApp.tr(),
                  value: context.locale.languageCode,
                  list: const <String>['pl', 'en'],
                  onChanged: (String? state) => context.setLocale(Locale(state!)),
                ),
              ),
              Container(
                child: Row(
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
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
