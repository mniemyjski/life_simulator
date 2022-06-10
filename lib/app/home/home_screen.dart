import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_simulator/utilities/utilities.dart';

import '../../config/routes/routes.gr.dart';
import '../../constants/constants.dart';
import '../../widgets/widgets.dart';
import '../new_game/new_game_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Placeholder(
                fallbackHeight: 200,
              ),
            ),
            BlocBuilder<NewGameCubit, bool>(
              builder: (context, state) {
                if (!state)
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomButton(
                      onPressed: () {
                        context.router.push(const GameRoute());
                      },
                      child: Text(LocaleKeys.continueGame.tr()),
                    ),
                  );

                return Container();
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                onPressed: () {
                  context.read<NewGameCubit>().change(true);
                  context.router.push(const GameRoute());
                  context.read<NewGameCubit>().change(false);
                },
                child: Text(LocaleKeys.newGame.tr()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                onPressed: () => context.router.push(const SettingsRoute()),
                child: Text(LocaleKeys.settings.tr()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                onPressed: () {
                  if (Platform.isAndroid) {
                    SystemNavigator.pop();
                  } else if (Platform.isIOS) {
                    exit(0);
                  }
                },
                child: Text(LocaleKeys.exit.tr()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
