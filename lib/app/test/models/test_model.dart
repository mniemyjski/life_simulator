import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

import 'etest_model.dart';

part 'test_model.g.dart';

enum ETypeTest { test1, test2 }

@Collection(ignore: {'props', 'stringify'})
class TestModel extends Equatable {
  Id? id;
  late double fame;
  late DateTime dateTime;
  @enumerated
  late ETypeTest eTypeTest;

  final eTest = IsarLink<ETest>();

  builder(
      {required double fame,
      required ETypeTest eTypeTest,
      required ETest eTest,
      required DateTime dateTime}) {
    return TestModel()
      ..fame = fame
      ..eTypeTest = eTypeTest
      ..dateTime = dateTime
      ..eTest.value = eTest;
  }

  @override
  List<Object?> get props => [id, fame, eTypeTest, eTest];
}
