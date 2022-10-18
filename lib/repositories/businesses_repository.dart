import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:richeable/app/business/models/business/business_model.dart';
import 'package:richeable/config/injectable/app_module.dart';
import 'package:richeable/config/injectable/injection.dart';

@lazySingleton
class BusinessesRepository {
  late Isar _isar;

  BusinessesRepository() {
    _isar = getIt<AppModule>().instance;
  }

  Future addBusiness(Business business) async {
    return await _isar.writeTxn(() async {
      await _isar.business.put(business);
    });
  }

  Future removeBusiness(Business business) async {
    return await _isar.writeTxn(() async {
      await _isar.business.delete(business.id);
    });
  }

  Future updateBusiness(Business business) async {
    return await _isar.writeTxn(() async {
      await _isar.business.put(business);
    });
  }

  Future<List<Business>> getBusinesses() async {
    return await _isar.business.where().findAll();
  }

  Stream watchBusiness() {
    return _isar.business.where().watch();
  }
}
