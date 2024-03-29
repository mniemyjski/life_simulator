import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

abstract class Env {
  static const dev = 'dev';
  static const prod = 'prod';
}

final getIt = GetIt.instance;

@injectableInit
Future<void> configureDependencies(String environment) async =>
    await $initGetIt(getIt, environment: environment);
