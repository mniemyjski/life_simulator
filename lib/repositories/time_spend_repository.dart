import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:richeable/app/time_spend/models/time_spend_model/time_spend_model.dart';

import '../app/time_spend/models/time_bonus/time_bonus_model.dart';
import '../config/injectable/app_module.dart';
import '../config/injectable/injection.dart';

@lazySingleton
class TimeSpendRepository {
  late Isar _isar;

  TimeSpendRepository() {
    _isar = getIt<AppModule>().instance;
  }

  Future init() async {
    return await _isar.writeTxn(() async {
      await _isar.timeSpends.put(const TimeSpend());
    });
  }

  counting() async {
    await _isar.writeTxn(() async {
      TimeSpend timeSpend = await getTimeSpend();

      TimeSpend refresh = timeSpend.copyWith(
        used: 0,
        free: 24 -
            timeSpend.learn -
            timeSpend.work -
            timeSpend.relax -
            timeSpend.sleep -
            timeSpend.freelance -
            timeSpend.getBonus(ETypeBonus.commuting),
      );

      await _isar.timeSpends.put(refresh);
    });
  }

  Future<TimeSpend> getTimeSpend() async {
    return await _isar.timeSpends.get(1) as TimeSpend;
  }

  Future<String?> changeWork(int hours) async {
    return await _isar.writeTxn(() async {
      TimeSpend timeSpend = await getTimeSpend();

      TimeSpend refresh = timeSpend.copyWith(
        work: timeSpend.work + hours,
        free: timeSpend.free - hours,
      );

      await _isar.timeSpends.put(refresh);
    });
  }

  Future<String?> changeCommuting(int hours) async {
    return await _isar.writeTxn(() async {
      TimeSpend timeSpend = await getTimeSpend();

      TimeSpend refresh = timeSpend.copyWith(
        commuting: timeSpend.commuting + hours,
        free: timeSpend.free - hours,
      );

      await _isar.timeSpends.put(refresh);
    });
  }

  Future<String?> changeFreelance(int hours) async {
    return await _isar.writeTxn(() async {
      TimeSpend timeSpend = await getTimeSpend();

      if (timeSpend.freelance == 0 && hours < 0) return null;
      if (timeSpend.free < hours) return "You don't have free time";

      TimeSpend refresh = timeSpend.copyWith(
        freelance: timeSpend.freelance + hours,
        free: timeSpend.free - hours,
      );

      await _isar.timeSpends.put(refresh);
    });
  }

  Future<String?> changeLearning(int hours) async {
    return await _isar.writeTxn(() async {
      TimeSpend timeSpend = await getTimeSpend();

      if (timeSpend.learn == 0 && hours < 0) return null;
      if (timeSpend.free < hours) return "You don't have free time";

      TimeSpend refresh = timeSpend.copyWith(
        learn: timeSpend.learn + hours,
        free: timeSpend.free - hours,
      );

      await _isar.timeSpends.put(refresh);
    });
  }

  Future<String?> changeSleep(int hours) async {
    return await _isar.writeTxn(() async {
      TimeSpend timeSpend = await getTimeSpend();

      if (timeSpend.sleep == 0 && hours < 0) return null;
      if (timeSpend.free < hours) return "You don't have free time";

      TimeSpend refresh = timeSpend.copyWith(
        sleep: timeSpend.sleep + hours,
        free: timeSpend.free - hours,
      );

      await _isar.timeSpends.put(refresh);
    });
  }

  Future<String?> changeRelax(int hours) async {
    return await _isar.writeTxn(() async {
      TimeSpend timeSpend = await getTimeSpend();

      if (timeSpend.relax == 0 && hours < 0) return null;
      if (timeSpend.free < hours) return "You don't have free time";

      TimeSpend refresh = timeSpend.copyWith(
        relax: timeSpend.relax + hours,
        free: timeSpend.free - hours,
      );

      await _isar.timeSpends.put(refresh);
    });
  }

  Future<String?> changeUsed(int hours) async {
    return await _isar.writeTxn(() async {
      TimeSpend timeSpend = await getTimeSpend();

      if (timeSpend.freelance == 0 && hours < 0) return null;
      if (timeSpend.free < hours) return "You don't have free time";

      TimeSpend refresh = timeSpend.copyWith(
        freelance: timeSpend.freelance + hours,
        free: timeSpend.free - hours,
      );

      await _isar.timeSpends.put(refresh);
    });
  }

  Future addBonuses(List<TimeBonus> bonuses) async {
    return await _isar.writeTxn(() async {
      TimeSpend timeSpend = await getTimeSpend();
      await _isar.timeSpends
          .filter()
          .bonusesElement((q) => q.eTypeBonusSourceEqualTo(bonuses.first.eTypeBonusSource))
          .deleteAll();
      await _isar.timeSpends.put(timeSpend.copyWith(bonuses: [...timeSpend.bonuses, ...bonuses]));
    });
  }

  Future removeBonus(ETypeBonusSource eTypeBonusSource) async {
    return await _isar.writeTxn(() async {
      await _isar.timeSpends
          .filter()
          .bonusesElement((q) => q.eTypeBonusSourceEqualTo(eTypeBonusSource))
          .deleteAll();
    });
  }

  Stream watchTimeSpend() {
    return _isar.timeSpends.watchLazy();
  }
}
