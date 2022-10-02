import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

import '../app/freelance/models/freelance_done/freelance_done_model.dart';
import '../config/injectable/injection.dart';
import 'isar_repository.dart';

@lazySingleton
class FreelanceRepository {
  Future add(FreelanceDone freelanceDone) async {
    final isar = getIt<IsarRepository>().instance;
    await isar.writeTxn(() async {
      await isar.freelanceDones.put(freelanceDone);
    });
  }

  Future addAll(List<FreelanceDone> freelances) async {
    final isar = getIt<IsarRepository>().instance;
    await isar.writeTxn(() async {
      await isar.freelanceDones.clear();
      await isar.freelanceDones.putAll(freelances);
    });
  }

  Future<List<FreelanceDone>> getAll() async {
    final isar = getIt<IsarRepository>().instance;
    return await isar.freelanceDones.where().findAll();
  }

  Stream<List<FreelanceDone>> watch() {
    final isar = getIt<IsarRepository>().instance;
    return isar.freelanceDones.where().sortByDateCreDesc().watch();
  }

  remove() {}
}
