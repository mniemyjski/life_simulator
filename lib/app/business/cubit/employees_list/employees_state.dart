part of 'employees_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class EmployeesState with _$EmployeesState {
  const factory EmployeesState.initial() = Initial;
  const factory EmployeesState.loading() = Loading;
  factory EmployeesState.loaded(List<Employee> employees) = Loaded;

  factory EmployeesState.fromJson(Map<String, dynamic> json) => _$EmployeesStateFromJson(json);
}
