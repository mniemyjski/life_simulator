import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

import '../../../config/injectable/app_module.dart';
import '../../../config/injectable/injection.dart';

@lazySingleton
class StatsRepository {
  late Isar _isar;

  StatsRepository() {
    _isar = getIt<AppModule>().instance;
  }
}
