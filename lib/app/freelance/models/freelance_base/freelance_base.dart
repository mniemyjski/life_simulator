import 'package:isar/isar.dart';

enum ETypeFreelance {
  book,
  course,
  youtube,
  application,
  handicrafts,
}

abstract class FreelanceBase {
  final Id? id;
  final String uid;
  final String name;

  @enumerated
  final ETypeFreelance eTypeFreelance;

  const FreelanceBase(
      {this.id, required this.uid, required this.name, required this.eTypeFreelance});
}
