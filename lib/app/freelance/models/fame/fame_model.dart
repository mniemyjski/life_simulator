import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fame_model.g.dart';

@CopyWith()
@JsonSerializable()
@Collection(ignore: {'props', 'stringify'})
class Fame extends Equatable {
  final Id id;
  final double fame;

  const Fame({
    this.id = 1,
    required this.fame,
  });

  @override
  List<Object> get props => [fame];

  factory Fame.fromJson(Map<String, dynamic> json) => _$FameFromJson(json);
  Map<String, dynamic> toJson() => _$FameToJson(this);
}
