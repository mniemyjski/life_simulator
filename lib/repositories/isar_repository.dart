import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:richeable/app/freelance/models/freelance_done/freelance_done_model.dart';
import 'package:richeable/app/money/models/transaction/transaction_model.dart';
import 'package:richeable/app/stock_market/models/candle/candle.dart';

@lazySingleton
class IsarRepository {
  late Isar _instance;

  Isar get instance => _instance;

  init() async {
    if (Isar.instanceNames.isEmpty) {
      _instance = await Isar.open([TransactionSchema, CandleSchema, FreelanceDoneSchema]);
    } else {
      _instance = await Future.value(Isar.getInstance());
    }
  }

  newGame() async {
    if (Isar.instanceNames.isEmpty) {
      _instance = await Isar.open([TransactionSchema]);
      _instance.writeTxn(() => _instance.clear());
    } else {
      _instance.writeTxn(() => _instance.clear());
    }
  }
}
