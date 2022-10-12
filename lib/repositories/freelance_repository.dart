import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

import '../app/freelance/models/freelance_done/freelance_done_model.dart';
import '../config/injectable/app_module.dart';
import '../config/injectable/injection.dart';

@lazySingleton
class FreelanceRepository {
  late Isar _isar;

  FreelanceRepository() {
    _isar = getIt<AppModule>().instance;
  }

  Future add(FreelanceDone freelanceDone) async {
    await _isar.writeTxn(() async {
      await _isar.freelanceDones.put(freelanceDone);
    });
  }

  Future change(List<FreelanceDone> freelances) async {
    final List<int> result = [];
    for (var element in freelances) {
      result.add(element.id);
    }

    await _isar.writeTxn(() async {
      await _isar.freelanceDones.deleteAll(result);
      await _isar.freelanceDones.putAll(freelances);
    });
  }

  Future<double> dailyPrice() async {
    return await _isar.freelanceDones.where().priceProperty().sum();
  }

  Future<double> dailyFame() async {
    return await _isar.freelanceDones.where().fameProperty().sum();
  }

  getToReduce(DateTime dateTime) async {
    return await _isar.freelanceDones
        .filter()
        .next1EqualTo(dateTime)
        .or()
        .next2EqualTo(dateTime)
        .or()
        .next3EqualTo(dateTime)
        .findAll();
  }

  Future removeOld(DateTime dateTime) async {
    await _isar.writeTxn(() async {
      await _isar.freelanceDones.filter().next3LessThan(dateTime).deleteAll();
    });
  }

  // Future<List<FreelanceDone>> getAll() async {
  //   return await _isar.freelanceDones.where().findAll();
  // }

  Stream<List<FreelanceDone>> watch() {
    return _isar.freelanceDones.where().sortByDateCreDesc().watch();
  }

  remove() {}
}
