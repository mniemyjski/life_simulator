import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

import '../../../../utilities/utilities.dart';

part 'employee_model.g.dart';

enum ETypeEmployees { worker, scientist, accountant, analyst, manager, marketer }

@Collection(ignore: {'props', 'stringify'})
@Name('Employees')
class Employee extends Equatable {
  final Id id;
  final int? businessId;

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
        eTypeEmployees,
        cost,
        efficiency,
        rating,
        satisfaction,
        dateOfEmployment,
        fired,
      ];

  Employee copyWith({
    Id? id,
    Id? businessId,
    ETypeEmployees? eTypeEmployees,
    double? cost,
    double? efficiency,
    int? rating,
    int? satisfaction,
    DateTime? dateOfEmployment,
    DateTime? fired,
  }) {
    return Employee(
      id: id ?? this.id,
      businessId: businessId ?? this.businessId,
      eTypeEmployees: eTypeEmployees ?? this.eTypeEmployees,
      cost: cost ?? this.cost,
      efficiency: efficiency ?? this.efficiency,
      rating: rating ?? this.rating,
      satisfaction: satisfaction ?? this.satisfaction,
      dateOfEmployment: dateOfEmployment ?? this.dateOfEmployment,
      fired: fired ?? this.fired,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'businessId': businessId,
      'eTypeEmployees': Enums.toText(eTypeEmployees),
      'cost': cost,
      'efficiency': efficiency,
      'rating': rating,
      'satisfaction': satisfaction,
      'dateOfEmployment': dateOfEmployment?.millisecondsSinceEpoch,
      'fired': fired?.millisecondsSinceEpoch,
    };
  }

  factory Employee.fromJson(Map<String, dynamic> map) {
    return Employee(
      id: map['id'] as Id,
      businessId: map['businessId'] as Id,
      eTypeEmployees: Enums.toEnum(map['eTypeEmployees'], ETypeEmployees.values),
      cost: map['cost'] as double,
      efficiency: map['efficiency'] as double,
      rating: map['rating'] as int,
      satisfaction: map['satisfaction'] as int,
      dateOfEmployment: DateTime.fromMillisecondsSinceEpoch(map['dateOfEmployment']),
      fired: DateTime.fromMillisecondsSinceEpoch(map['fired']),
    );
  }
}
