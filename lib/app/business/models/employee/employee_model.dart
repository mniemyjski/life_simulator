import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'employee_model.g.dart';

enum ETypeEmployees { worker, scientist, accountant, analyst, manager, marketer }

@CopyWith()
@JsonSerializable()
@Collection(ignore: {'props', 'stringify'})
@Name('Employees')
class Employee extends Equatable {
  final Id id;
  final int? businessId;
  final int? productId;

  @enumerated
  final ETypeEmployees eTypeEmployees;
  final double cost;
  final double efficiency;
  final int rating;
  final int satisfaction;
  final DateTime? dateOfEmployment;
  final DateTime? fired;

  const Employee({
    this.id = Isar.autoIncrement,
    this.productId,
    this.businessId,
    required this.eTypeEmployees,
    required this.cost,
    required this.efficiency,
    required this.rating,
    this.satisfaction = 1,
    this.dateOfEmployment,
    this.fired,
  });

  @override
  List<Object?> get props => [
        id,
        businessId,
        productId,
        eTypeEmployees,
        cost,
        efficiency,
        rating,
        satisfaction,
        dateOfEmployment,
        fired,
      ];

  factory Employee.fromJson(Map<String, dynamic> json) => _$EmployeeFromJson(json);
  Map<String, dynamic> toJson() => _$EmployeeToJson(this);
}
