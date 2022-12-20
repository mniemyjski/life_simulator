import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:richeable/app/personality/models/food/food_model.dart';
import 'package:richeable/app/personality/models/house/house_model.dart';
import 'package:richeable/app/personality/models/transport/transport_model.dart';

import '../../../config/injectable/app_module.dart';
import '../../../config/injectable/injection.dart';

@lazySingleton
class PersonalityRepository {
  late Isar _isar;

  PersonalityRepository() {
    _isar = getIt<AppModule>().instance;
  }

  init() async {
    return await _isar.writeTxn(() async {});
  }

  changeFood(Food food) async {
    return await _isar.writeTxn(() async {
      _isar.food.put(food);
    });
  }

  addHouse(House house) async {
    return await _isar.writeTxn(() async {
      _isar.house.put(house);
    });
  }

  removeHouse(House house) async {
    return await _isar.writeTxn(() async {
      _isar.house.delete(house.id);
    });
  }

  addTransport(Transport transport) async {
    return await _isar.writeTxn(() async {
      _isar.transport.put(transport);
    });
  }

  removeTransport(Transport transport) async {
    return await _isar.writeTxn(() async {
      _isar.transport.delete(transport.id);
    });
  }
}
