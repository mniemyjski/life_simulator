// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employees_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Employees _$$_EmployeesFromJson(Map<String, dynamic> json) => _$_Employees(
      id: json['id'] as String,
      businessId: json['businessId'] as String,
      eTypeEmployees:
          $enumDecode(_$ETypeEmployeesEnumMap, json['eTypeEmployees']),
      cost: (json['cost'] as num).toDouble(),
      efficiency: (json['efficiency'] as num).toDouble(),
      rating: json['rating'] as int,
      satisfaction: json['satisfaction'] as int,
      dateOfEmployment: DateTime.parse(json['dateOfEmployment'] as String),
      nextPayment: DateTime.parse(json['nextPayment'] as String),
    );

Map<String, dynamic> _$$_EmployeesToJson(_$_Employees instance) =>
    <String, dynamic>{
      'id': instance.id,
      'businessId': instance.businessId,
      'eTypeEmployees': _$ETypeEmployeesEnumMap[instance.eTypeEmployees]!,
      'cost': instance.cost,
      'efficiency': instance.efficiency,
      'rating': instance.rating,
      'satisfaction': instance.satisfaction,
      'dateOfEmployment': instance.dateOfEmployment.toIso8601String(),
      'nextPayment': instance.nextPayment.toIso8601String(),
    };

const _$ETypeEmployeesEnumMap = {
  ETypeEmployees.worker: 'worker',
  ETypeEmployees.scientist: 'scientist',
  ETypeEmployees.specialist: 'specialist',
};
