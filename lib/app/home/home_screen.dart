import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_simulator/config/routes/routes.gr.dart';
import 'package:life_simulator/utilities/utilities.dart';
import 'package:life_simulator/widgets/widgets.dart';

import '../../constants/constants.dart';
import '../save/save_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SaveCubit, SaveState>(
        builder: (context, state) {
          return state.when(
            initial: () => Container(),
            loaded: (save) => _buildBody(save),
          );
        },
      ),
    );
  }

  Builder _buildBody(bool save) {
    return Builder(builder: (context) {
      return Center(
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
            if (save)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomButton(
                  onPressed: () {
                    context.router.push(const GameRoute());
                  },
                  child: Text(LocaleKeys.continueGame.tr()),
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                onPressed: () async {
                  context.read<SaveCubit>().change(false);
                  context.router.push(const GameRoute());
                  context.read<SaveCubit>().change(true);
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
      );
    });
  }
}
