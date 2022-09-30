import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

part 'etest_model.g.dart';

@Collection(ignore: {'props', 'stringify'})
class ETest extends Equatable {
  Id? id;
  late String aaa;

  ETest({this.id, required this.aaa});

  @override
  List<Object?> get props => [id, aaa];
}
