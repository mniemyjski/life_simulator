import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'business_model.g.dart';

@CopyWith()
@JsonSerializable()
@Collection(ignore: {'props', 'stringify'})
@Name('Businesses')
class Business extends Equatable {
  final Id id;
  final String name;
  final DateTime dateCre;

  final int efficiencyEmployees;
  final int efficiencyScientist;

  final int maxWorkers;
  final int maxScientist;
  final int maxAccountant;
  final int maxAnalyst;
  final int maxManager;
  final int maxMarketer;

  final int countWorkers;
  final int countScientist;
  final int countAccountant;
  final int countAnalyst;
  final int countManager;
  final int countMarketer;

  final double balance;
  final double taxes;

  const Business({
    this.id = Isar.autoIncrement,
    required this.name,
    required this.dateCre,
    this.maxWorkers = 10,
    this.maxScientist = 2,
    this.efficiencyEmployees = 1,
    this.efficiencyScientist = 1,
    this.maxAccountant = 0,
    this.maxAnalyst = 0,
    this.maxManager = 0,
    this.maxMarketer = 0,
    this.countWorkers = 0,
    this.countScientist = 0,
    this.countAccountant = 0,
    this.countAnalyst = 0,
    this.countManager = 0,
    this.countMarketer = 0,
    this.balance = 0,
    this.taxes = 0,
  })  : assert(maxWorkers <= 1000),
        assert(maxWorkers >= 0),
        assert(maxScientist <= 50),
        assert(maxScientist >= 0),
        assert(maxAccountant <= 1),
        assert(maxAccountant >= 0),
        assert(maxManager <= 1),
        assert(maxManager >= 0),
        assert(maxMarketer <= 50),
        assert(maxMarketer >= 0),
        assert(maxAnalyst <= 1),
        assert(maxAnalyst >= 0);

  @override
  List<Object?> get props => [
        id,
        name,
        maxWorkers,
        maxScientist,
        efficiencyEmployees,
        efficiencyScientist,
        maxAccountant,
        maxAnalyst,
        maxManager,
        maxMarketer,
        dateCre,
        countWorkers,
        countScientist,
        countAccountant,
        countAnalyst,
        countManager,
        countMarketer
      ];

  factory Business.fromJson(Map<String, dynamic> json) => _$BusinessFromJson(json);
  Map<String, dynamic> toJson() => _$BusinessToJson(this);
}
