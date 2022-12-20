import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../models/employee/employee_model.dart';
import '../../repositories/employee_repository.dart';

part 'human_resources_cubit.freezed.dart';
part 'human_resources_cubit.g.dart';
part 'human_resources_state.dart';

@injectable
class HumanResourcesCubit extends Cubit<HumanResourcesState> {
  final EmployeeRepository employeeRepository;
  final int businessId;

  HumanResourcesCubit(
    @factoryParam this.businessId,
    this.employeeRepository,
  ) : super(const HumanResourcesState.initial());

  addEmployee(Employee employee) {
    emit(const HumanResourcesState.loading());
    employeeRepository.addEmployer(employee.copyWith(businessId: businessId));
    emit(const HumanResourcesState.loaded());
  }
}
