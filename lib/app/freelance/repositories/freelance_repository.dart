import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:richeable/app/freelance/models/fame/fame_model.dart';
import 'package:richeable/app/freelance/models/freelance_job/freelance_job_model.dart';
import 'package:richeable/app/money/models/transaction/transaction_model.dart';

import '../../../config/injectable/app_module.dart';
import '../../../config/injectable/injection.dart';
import '../models/freelance_done/freelance_done_model.dart';
import '../services/freelance_services.dart';

@lazySingleton
class FreelanceRepository {
  late Isar _isar;

  FreelanceRepository() {
    _isar = getIt<AppModule>().instance;
  }

  Future counting(DateTime dateTime) async {
    await _isar.writeTxn(() async {
      List<FreelanceDone> freelances = [
        ...await _isar.freelanceDones.where().next1EqualTo(dateTime).findAll(),
        ...await _isar.freelanceDones.where().next2EqualTo(dateTime).findAll(),
        ...await _isar.freelanceDones.where().next3EqualTo(dateTime).findAll(),
      ];

      if (freelances.isNotEmpty) {
        final result = await FreelanceServices.reduceFameAndCountingFameAndMoney(
          date: dateTime,
          freelances: freelances,
        );

        await _isar.freelanceDones.putAll(result);
      }

      double addFame = await dailyFame();
      double addMoney = await dailyPrice();

      final Fame fame = await getFame();
      addMoney = addMoney * (fame.fame / 30000);
      if (addFame > 0) await _isar.fames.put(Fame(fame: fame.fame + addFame));

      if (addMoney > 0) {
        final transaction = Transaction(
            value: addMoney,
            eTypeTransactionSource: ETypeTransactionSource.freelance,
            dateCre: dateTime);

        await _isar.transactions.put(transaction);
      }
      await _isar.freelanceDones.where().next3LessThan(dateTime).deleteAll();
      await _countingFame();
    });
  }

  Future _countingFame() async {
    final Fame fame = await getFame();

    double decrease = 0;
    if (fame.fame < 1000000) decrease = (fame.fame * 0.001);
    if (fame.fame > 1000000 && fame.fame < 10000000) decrease = (fame.fame * 0.005);
    if (fame.fame > 10000000) decrease = (fame.fame * 0.02);

    double result = fame.fame - decrease;
    await _isar.fames.put(Fame(fame: result));
  }

  Future add(FreelanceDone freelanceDone) async {
    await _isar.writeTxn(() async {
      await _isar.freelanceDones.put(freelanceDone);
    });
  }

  countingJob() {}

  countingExp() {}

  Future addJob(FreelanceJob job) async {
    await _isar.writeTxn(() async {
      await _isar.freelanceJobs.put(job);
    });
  }

  Future buyAdv({required double money, required int value, required DateTime dateTime}) async {
    await _isar.writeTxn(() async {
      Fame fame = await getFame();
      final transaction = Transaction(
        value: -money,
        eTypeTransactionSource: ETypeTransactionSource.advertisement,
        dateCre: dateTime,
      );

      await _isar.fames.put(Fame(fame: fame.fame + value));
      await _isar.transactions.put(transaction);
    });
  }

  Future<double> dailyPrice() async {
    return await _isar.freelanceDones.where().priceProperty().sum();
  }

  Future<double> dailyFame() async {
    return await _isar.freelanceDones.where().fameProperty().sum();
  }

  Future<List<FreelanceDone>> getFreelanceDone() async {
    return await _isar.freelanceDones.where(sort: Sort.desc).anyDateCre().findAll();
  }

  Future<Fame> getFame() async {
    return await _isar.fames.get(1) ?? const Fame(fame: 0);
  }

  Stream watchDone() {
    return _isar.freelanceDones.watchLazy();
  }

  Stream watchFame() {
    return _isar.fames.watchLazy();
  }
}
