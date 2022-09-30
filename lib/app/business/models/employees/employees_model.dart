import 'package:freezed_annotation/freezed_annotation.dart';

part 'employees_model.freezed.dart';
part 'employees_model.g.dart';

enum ETypeEmployees { worker, scientist, specialist }

@freezed
class Employees with _$Employees {
  const factory Employees({
    required String id,
    required String businessId,
    required ETypeEmployees eTypeEmployees,
    required double cost,
    required double efficiency,
    required int rating,
    required int satisfaction,
    required DateTime dateOfEmployment,
    required DateTime nextPayment,
  }) = _Employees;

  factory Employees.fromJson(Map<String, dynamic> json) => _$EmployeesFromJson(json);
}
