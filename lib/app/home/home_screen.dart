import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../config/routes/routes.gr.dart';
import '../../constants/constants.dart';
import '../../widgets/widgets.dart';
import '../new_game/new_game_cubit.dart';
import '../settings/cubit/audio_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with WidgetsBindingObserver {
  @override
  void initState() {
    context.read<AudioCubit>().getMusic(AudioCollection.music()).play();
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        context.read<AudioCubit>().resumeMusic();
        break;
      case AppLifecycleState.inactive:
        context.read<AudioCubit>().pauseMusic();
        break;
      case AppLifecycleState.paused:
        context.read<AudioCubit>().pauseMusic();
        break;
      case AppLifecycleState.detached:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // CustomButton(
            //     onPressed: () async {
            //       // final test = File('assets/images/background.png');
            //       // final test2 = test.readAsBytesSync();
            //       final bytes = await rootBundle.load('assets/images/background.png');
            //       final test = bytes.buffer.asUint8List();
            //
            //       print(test.length);
            //     },
            //     child: Text('test')),
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.headline2!.copyWith(color: Colors.white),
                  children: <TextSpan>[
                    const TextSpan(
                      text: 'Rich',
                    ),
                    TextSpan(
                      text: 'Able',
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(color: Theme.of(context).primaryColor),
                    ),
                  ],
                ),
              ),
            ),
            BlocBuilder<NewGameCubit, bool>(
              builder: (context, state) {
                if (!state) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomButton(
                      onPressed: () {
                        context.read<AudioCubit>().getSounds(AudioCollection.click()).play();
                        // context.router.push(const GameRoute());
                        context.router.push(const GameRouter(children: [GameRoute()]));
                      },
                      child: Text(LocaleKeys.continueGame.tr()),
                    ),
                  );
                }

                return Container();
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                onPressed: () async {
                  context.read<AudioCubit>().getSounds(AudioCollection.click()).play();
                  await context.read<NewGameCubit>().change();
                  context.router.push(const GameRouter(children: [GameRoute()]));
                },
                child: Text(LocaleKeys.newGame.tr()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                onPressed: () {
                  context.read<AudioCubit>().getSounds(AudioCollection.click()).play();
                  context.router.push(const SettingsRoute());
                },
                child: Text(LocaleKeys.settings.tr()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                onPressed: () {
                  context.read<AudioCubit>().getSounds(AudioCollection.click()).play();
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
