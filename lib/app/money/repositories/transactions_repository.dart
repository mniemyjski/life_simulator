import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:richeable/app/money/models/transaction/transaction_model.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../config/injectable/app_module.dart';
import '../../../config/injectable/injection.dart';

enum ETypeDate { day, month, year }

@lazySingleton
class TransactionsRepository {
  late Isar _isar;

  TransactionsRepository() {
    _isar = getIt<AppModule>().instance;
  }

  init() async {
    return await _isar.writeTxn(() async {
      Transaction transaction = Transaction(
          value: 20000000,
          eTypeTransactionSource: ETypeTransactionSource.giftFromParents,
          dateCre: DateTime(18, 1, 1));
      await _isar.transactions.put(transaction);
    });
  }

  Future add(Transaction transaction) async {
    return await _isar.writeTxn(() async {
      await _isar.transactions.put(transaction);
    });
  }

  Future<double> balance() async {
    return await _isar.transactions.filter().idSourceIsNull().valueProperty().sum();
  }

  Future<double> balanceForBusiness(int id) async {
    return await _isar.transactions.filter().idSourceEqualTo(id).valueProperty().sum();
  }

  Future<double> lastYearIncome(DateTime dateTime) async {
    return await _isar.transactions
        .filter()
        .dateCreBetween(dateTime.addDate(years: -1), dateTime)
        .valueProperty()
        .sum();
  }

  Future<List<Transaction>> getTransactions(DateTime date, ETypeDate eTypeDate) async {
    switch (eTypeDate) {
      case ETypeDate.day:
        return await _isar.transactions.filter().idSourceIsNull().dateCreEqualTo(date).findAll();
      case ETypeDate.month:
        return await _isar.transactions.filter().idSourceIsNull().monthCreEqualTo(date).findAll();
      case ETypeDate.year:
        return await _isar.transactions.filter().idSourceIsNull().yearCreEqualTo(date).findAll();
    }
  }

  Future<List<Transaction>> getTransactionsBusiness({
    required DateTime date,
    required ETypeDate eTypeDate,
    required int businessId,
  }) async {
    switch (eTypeDate) {
      case ETypeDate.day:
        return await _isar.transactions
            .filter()
            .dateCreEqualTo(date)
            .idSourceEqualTo(businessId)
            .findAll();
      case ETypeDate.month:
        return await _isar.transactions
            .filter()
            .monthCreEqualTo(date)
            .idSourceEqualTo(businessId)
            .findAll();
      case ETypeDate.year:
        return await _isar.transactions
            .filter()
            .yearCreEqualTo(date)
            .idSourceEqualTo(businessId)
            .findAll();
    }
  }

  Stream watchLazyTotalUser() {
    return _isar.transactions.filter().idSourceIsNull().watchLazy();
  }

  Stream watchLazyForBusiness(int id) {
    return _isar.transactions.filter().idSourceEqualTo(id).watchLazy();
  }
}
