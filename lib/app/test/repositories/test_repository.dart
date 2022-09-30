import 'package:isar/isar.dart';
import 'package:richeable/app/test/models/test_model.dart';

import '../models/etest_model.dart';

class TestRepository {
  Future<TestModel?> get() async {
    final isar = await _openDB();
    TestModel? test = await isar.testModels.get(1);
    return test;
  }

  Future<String?> put() async {
    final isar = await _openDB();

    TestModel test = TestModel().builder(
        fame: 1,
        eTypeTest: ETypeTest.test1,
        eTest: ETest(aaa: "test"),
        dateTime: DateTime(18, 1, 1));

    await isar.writeTxn(() async {
      await isar.eTests.put(test.eTest.value!);
      await isar.testModels.put(test);
      return await test.eTest.save();
    });
    return "done";
  }

  generate() async {
    final isar = await _openDB();

    List<TestModel> list = List.generate(
      100,
      (index) {
        return TestModel().builder(
            fame: index.toDouble(),
            eTypeTest: ETypeTest.test1,
            eTest: ETest(aaa: "test"),
            dateTime: DateTime(18, 1, 1).add(Duration(days: index)));
      },
    );

    await isar.writeTxn(() async {
      for (var element in list) {
        await isar.eTests.put(element.eTest.value!);
        await isar.testModels.put(element);
        await element.eTest.save();
      }
    });
    return "done";
  }

  sum() async {
    final isar = await _openDB();
    double? sum = await isar.testModels.where().fameProperty().sum();
    return sum;
  }

  clear() async {
    final isar = await _openDB();
    isar.writeTxn(() => isar.clear());
  }

  Future<Isar> _openDB() async {
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open([TestModelSchema, ETestSchema]);
    } else {
      return Future.value(Isar.getInstance());
    }
  }
}
