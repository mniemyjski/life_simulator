import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:richeable/app/freelance/models/fame/fame_model.dart';

import '../../app/business/models/business/business_model.dart';
import '../../app/business/models/employee/employee_model.dart';
import '../../app/business/models/product/product_model.dart';
import '../../app/freelance/models/freelance_done/freelance_done_model.dart';
import '../../app/money/models/transaction/transaction_model.dart';
import '../../app/skills/models/skill_model.dart';
import '../../app/stock_market/models/candle/candle.dart';
import '../../app/stock_market/models/exchange/exchange.dart';
import '../../app/stock_market/models/instrument/instrument.dart';

@lazySingleton
class AppModule {
  late Isar _instance;

  Isar get instance => _instance;

  static const List<CollectionSchema<dynamic>> _schema = [
    TransactionSchema,
    FreelanceDoneSchema,
    BusinessSchema,
    EmployeeSchema,
    ProductSchema,
    InstrumentSchema,
    CandleSchema,
    ExchangeSchema,
    FameSchema,
    SkillSchema,
  ];

  Future init() async {
    if (Isar.instanceNames.isEmpty) {
      _instance = await Isar.open(_schema);
    } else {
      _instance = await Future.value(Isar.getInstance());
    }
  }

  Future newGame() async {
    await _instance.writeTxn(() => _instance.clear());
  }
}
