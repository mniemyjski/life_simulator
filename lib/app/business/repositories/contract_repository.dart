import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

import '../../../config/injectable/app_module.dart';
import '../../../config/injectable/injection.dart';

@lazySingleton
class BusinessesRepository {
  late Isar _isar;

  BusinessesRepository() {
    _isar = getIt<AppModule>().instance;
  }

  Future counting(DateTime dateTime) async {
    if (dateTime.day != 1) return;
  }
}
