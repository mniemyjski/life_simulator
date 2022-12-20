import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'food_model.g.dart';

@CopyWith()
@JsonSerializable()
@Collection(ignore: {'props', 'stringify'}, accessor: 'food')
class Food extends Equatable {
  final Id id;
  final String uid;
  final String name;
  final double cost;
  final int bonusToRelax;
  final int bonusToSleep;
  final int bonusToLearn;

  const Food({
    required this.uid,
    required this.name,
    required this.cost,
    this.bonusToRelax = 0,
    this.bonusToSleep = 0,
    this.bonusToLearn = 0,
  }) : id = 1;

  @override
  List<Object> get props => [
        id,
        uid,
        name,
        cost,
        bonusToRelax,
        bonusToSleep,
        bonusToLearn,
      ];

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);
  Map<String, dynamic> toJson() => _$FoodToJson(this);
}
