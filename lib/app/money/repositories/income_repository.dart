import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:richeable/app/money/models/income/income_model.dart';

import '../../../config/injectable/app_module.dart';
import '../../../config/injectable/injection.dart';

@lazySingleton
class IncomeRepository {
  late Isar _isar;

  IncomeRepository() {
    _isar = getIt<AppModule>().instance;
  }

  add(Income income) async {
    return await _isar.writeTxn(() async {
      _isar.incomes.put(income);
    });
  }

  delete(Income income) async {
    return await _isar.writeTxn(() async {
      _isar.incomes.delete(income.id);
    });
  }
}
