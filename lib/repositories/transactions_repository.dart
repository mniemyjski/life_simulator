import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:richeable/app/money/models/transaction/transaction_model.dart';
import 'package:richeable/repositories/isar_repository.dart';
import 'package:richeable/utilities/utilities.dart';

import '../config/injectable/injection.dart';

enum ETypeDate { day, month, year }

@lazySingleton
class TransactionsRepository {
  Future add(Transaction transaction) async {
    final isar = getIt<IsarRepository>().instance;
    return await isar.writeTxn(() async {
      await isar.transactions.put(transaction);
    });
  }

  Future<double> sum() async {
    final isar = getIt<IsarRepository>().instance;
    return await isar.transactions.where().valueProperty().sum();
  }

  Future<double> lastYearIncome(DateTime dateTime) async {
    final isar = getIt<IsarRepository>().instance;
    return await isar.transactions
        .filter()
        .dateCreBetween(dateTime.addDate(years: -1), dateTime)
        .valueProperty()
        .sum();
  }

  Future<List<Transaction>> getTransactions(DateTime date, ETypeDate eTypeDate) async {
    final isar = getIt<IsarRepository>().instance;

    switch (eTypeDate) {
      case ETypeDate.day:
        return await isar.transactions.filter().dateCreEqualTo(date).findAll();
      case ETypeDate.month:
        return await isar.transactions.filter().monthCreEqualTo(date).findAll();
      case ETypeDate.year:
        return await isar.transactions.filter().yearCreEqualTo(date).findAll();
    }
  }

  Stream watchLazyTotal() {
    final isar = getIt<IsarRepository>().instance;
    return isar.transactions.watchLazy();
  }
}
