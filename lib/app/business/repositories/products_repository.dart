import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:logger/logger.dart';
import 'package:richeable/app/business/models/product/product_model.dart';

import '../../../config/injectable/app_module.dart';
import '../../../config/injectable/injection.dart';
import '../../money/models/transaction/transaction_model.dart';
import '../models/employee/employee_model.dart';

@lazySingleton
class ProductsRepository {
  late Isar _isar;

  ProductsRepository() {
    _isar = getIt<AppModule>().instance;
  }

  counting(DateTime dateTime) async {
    await _isar.writeTxn(() async {
      List<Product> products = await _isar.products.where().findAll();
      for (var product in products) {
        Product newProduct;
        newProduct = await _produce(product, dateTime);
        newProduct = await _quality(newProduct);
        newProduct = await _marketing(newProduct);

        await _isar.products.put(newProduct);
      }
    });
  }

  Future<Product> _produce(Product product, DateTime dateTime) async {
    final double efficiency = await _isar.employees
        .filter()
        .businessIdEqualTo(product.businessId)
        .productIdEqualTo(product.id)
        .eTypeEmployeesEqualTo(ETypeEmployees.worker)
        .efficiencyProperty()
        .sum();

    int result = (product.unitPerWork * efficiency).round();

    if (result == 0) return product;

    Transaction transaction = Transaction(
      idSource: product.businessId,
      value: -result * product.costPerUnit,
      eTypeTransactionSource: ETypeTransactionSource.costProduce,
      dateCre: dateTime,
    );
    await _isar.transactions.put(transaction);

    return product.copyWith(amount: product.amount + result);
  }

  _quality(Product product) async {
    final double efficiency = await _isar.employees
        .filter()
        .businessIdEqualTo(product.businessId)
        .productIdEqualTo(product.id)
        .eTypeEmployeesEqualTo(ETypeEmployees.scientist)
        .efficiencyProperty()
        .sum();

    Logger().wtf(efficiency);

    double valueChanger = -0.001 + (efficiency / 1000);
    double result = product.quality + valueChanger;
    if (product.quality + valueChanger >= 1) result = 1;
    if (product.quality + valueChanger <= 0) result = 0;

    return product.copyWith(quality: result);
  }

  _marketing(Product product) async {
    final double efficiency = await _isar.employees
        .filter()
        .businessIdEqualTo(product.businessId)
        .productIdEqualTo(product.id)
        .eTypeEmployeesEqualTo(ETypeEmployees.marketer)
        .efficiencyProperty()
        .sum();

    double decrease = 0;
    if (product.marketing < 1) decrease = -0.04;
    if (product.marketing < 0.8) decrease = -0.03;
    if (product.marketing < 0.6) decrease = -0.02;
    if (product.marketing < 0.4) decrease = -0.01;
    if (product.marketing < 0.2) decrease = -0.001;

    double valueChanger = decrease + (efficiency / 100);
    double result = product.marketing + valueChanger;
    if (product.marketing + valueChanger >= 1) result = 1;
    if (product.marketing + valueChanger <= 0) result = 0;

    return product.copyWith(marketing: result);
  }

  add(Product product) async {
    return await _isar.writeTxn(() async {
      await _isar.products.put(product);
    });
  }

  delete(int productId) async {
    return await _isar.writeTxn(() async {
      await _isar.products.delete(productId);
    });
  }

  Future<List<Product>> getAllProducts(int businessId) async {
    return await _isar.products.filter().businessIdEqualTo(businessId).findAll();
  }

  Future<Product?> get(int productId) async {
    return await _isar.products.get(productId);
  }

  Stream<List<Product>> watch(int businessId) {
    return _isar.products.filter().businessIdEqualTo(businessId).watch();
  }

  increaseAmount(Product product, int amount) async {
    return await _isar.writeTxn(() async {
      int newAmount = product.amount + amount;

      await _isar.products.put(product.copyWith(amount: newAmount));
    });
  }

  decreaseAmount(Product product, int amount) async {
    return await _isar.writeTxn(() async {
      int newAmount = product.amount >= amount ? product.amount - amount : 0;

      await _isar.products.put(product.copyWith(amount: newAmount));
    });
  }

  setMonthlyMarketing({required Product product, required double value}) async {
    return await _isar.writeTxn(() async {
      await _isar.products.put(product.copyWith(monthlyMarketingCost: value));
    });
  }
}
