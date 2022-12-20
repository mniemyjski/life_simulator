import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:richeable/app/business/models/product/product_model.dart';

import '../../../config/injectable/app_module.dart';
import '../../../config/injectable/injection.dart';

@lazySingleton
class ProductsRepository {
  late Isar _isar;

  ProductsRepository() {
    _isar = getIt<AppModule>().instance;
  }

  counting(DateTime dateTime) {}

  add(Product product) async {
    return await _isar.writeTxn(() async {
      await _isar.products.put(product);
    });
  }

  delete(Product product) async {
    return await _isar.writeTxn(() async {
      await _isar.products.delete(product.id);
    });
  }

  Future<List<Product>> get(int businessId) async {
    return await _isar.products.filter().businessIdEqualTo(businessId).findAll();
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
}
