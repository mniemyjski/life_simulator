import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:richeable/app/business/models/business/business_model.dart';
import 'package:richeable/app/business/models/employee/employee_model.dart';
import 'package:richeable/app/business/models/product/product_model.dart';
import 'package:richeable/app/business/models/research/research_model.dart';

import '../../../config/injectable/app_module.dart';
import '../../../config/injectable/injection.dart';

@lazySingleton
class ResearchRepository {
  late Isar _isar;

  ResearchRepository() {
    _isar = getIt<AppModule>().instance;
  }

  Future<String?> add(Research research) async {
    return await _isar.writeTxn(() async {
      Research? result = await get(research.businessId);
      if (result != null) return 'alreadyResearch';
      await _isar.researchs.put(research);
    });
  }

  Future remove(Research research) async {
    return await _isar.writeTxn(() async {
      await _isar.researchs.delete(research.id);
    });
  }

  Future counting(DateTime dateTime) async {
    return await _isar.writeTxn(() async {
      await _researchToProduct(dateTime);
      List<Business> businesses = await _isar.business.where().findAll();
      for (var business in businesses) {
        Research? research =
            await _isar.researchs.where().businessIdEqualTo(business.id).findFirst();
        if (research != null) {
          double effectivity = await getEffectivity(business.id);
          await _isar.researchs.put(research.copyWith(work: research.work + effectivity));
        }
      }
    });
  }

  Future<double> getEffectivity(int id) async {
    return await _isar.employees.filter().businessIdEqualTo(id).efficiencyProperty().sum();
  }

  Future _researchToProduct(DateTime dateTime) async {
    List<Research> newProds = await _isar.researchs
        .where()
        .dateEndEqualTo(dateTime)
        .filter()
        .workGreaterThan(12)
        .findAll();
    await _isar.products.putAll(newProds.map((e) => e.toProduct()).toList());
    await _isar.researchs.where().dateEndEqualTo(dateTime).deleteAll();
  }

  Future<Research?> get(int businessId) async {
    return await _isar.researchs.filter().businessIdEqualTo(businessId).findFirst();
  }

  Stream<Research?> watch(int businessId) {
    return _isar.researchs
        .filter()
        .businessIdEqualTo(businessId)
        .limit(1)
        .watch()
        .map((event) => event.isNotEmpty ? event.first : null);
  }
}
