import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:richeable/app/business/models/business/business_model.dart';
import 'package:richeable/app/business/models/employee/employee_model.dart';
import 'package:richeable/app/freelance/models/freelance_done/freelance_done_model.dart';
import 'package:richeable/app/money/models/transaction/transaction_model.dart';
import 'package:richeable/app/stock_market/models/candle/candle.dart';

@lazySingleton
class AppModule {
  late Isar _instance;

  Isar get instance => _instance;

  static const List<CollectionSchema<dynamic>> _schema = [
    TransactionSchema,
    CandleSchema,
    FreelanceDoneSchema,
    BusinessSchema,
    EmployeeSchema
  ];

  Future init() async {
    if (Isar.instanceNames.isEmpty) {
      _instance = await Isar.open(_schema);
    } else {
      _instance = await Future.value(Isar.getInstance());
    }
  }

  newGame() async {
    _instance.writeTxn(() => _instance.clear());
  }
}
