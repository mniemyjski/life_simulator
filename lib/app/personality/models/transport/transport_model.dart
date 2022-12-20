import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'transport_model.g.dart';

enum ETypeTransport { publicTransport, car }

@CopyWith()
@JsonSerializable()
@Collection(ignore: {'props', 'stringify'}, accessor: 'transport')
class Transport extends Equatable {
  final Id id;
  final String uid;
  final String name;
  final String brand;
  @enumerated
  final ETypeTransport eTypeTransport;
  final double cost;
  final double monthlyCost;
  final DateTime? dateBuy;
  final int bonusToRelax;
  final int bonusToSleep;
  final int bonusToLearn;
  final int commuting;

  const Transport({
    required this.uid,
    required this.name,
    required this.brand,
    required this.eTypeTransport,
    required this.cost,
    required this.monthlyCost,
    this.dateBuy,
    this.bonusToRelax = 0,
    this.bonusToSleep = 0,
    this.bonusToLearn = 0,
    this.commuting = 0,
  }) : id = 1;

  @override
  List<Object?> get props => [
        id,
        name,
        brand,
        eTypeTransport,
        cost,
        monthlyCost,
        dateBuy,
        bonusToRelax,
        bonusToSleep,
        bonusToLearn,
        commuting,
      ];

  factory Transport.fromJson(Map<String, dynamic> json) => _$TransportFromJson(json);

  Map<String, dynamic> toJson() => _$TransportToJson(this);
}
