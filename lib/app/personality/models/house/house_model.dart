import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'house_model.g.dart';

enum ETypeHouse { rent, buy }

@CopyWith()
@JsonSerializable()
@Collection(ignore: {'props', 'stringify'}, accessor: 'house')
class House extends Equatable {
  final Id id;
  final String uid;
  final String name;

  @enumerated
  final ETypeHouse eTypeHouse;
  final double cost;
  final double monthlyCost;
  final DateTime? dateBuy;
  final int bonusToRelax;
  final int bonusToSleep;
  final int bonusToLearn;

  const House({
    required this.uid,
    required this.name,
    required this.eTypeHouse,
    required this.cost,
    required this.monthlyCost,
    this.dateBuy,
    this.bonusToRelax = 0,
    this.bonusToSleep = 0,
    this.bonusToLearn = 0,
  }) : id = 1;

  @override
  List<Object?> get props => [
        id,
        uid,
        name,
        eTypeHouse,
        cost,
        monthlyCost,
        dateBuy,
        bonusToRelax,
        bonusToSleep,
        bonusToLearn,
      ];

  factory House.fromJson(Map<String, dynamic> json) => _$HouseFromJson(json);
  Map<String, dynamic> toJson() => _$HouseToJson(this);
}
