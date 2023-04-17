import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:richeable/app/business/models/employee/employee_model.dart';
import 'package:richeable/app/business/repositories/businesses_repository.dart';
import 'package:richeable/app/business/repositories/employee_repository.dart';

import '../../../../utilities/utilities.dart';
import '../../../date/cubit/date_cubit.dart';

part 'employees_cubit.freezed.dart';
part 'employees_cubit.g.dart';
part 'employees_state.dart';

@injectable
class EmployeesCubit extends HydratedCubit<EmployeesState> {
  final BusinessesRepository businessesRepository;
  final EmployeeRepository employeeRepository;
  final int businessId;
  late StreamSubscription _employeesSub;
  final DateCubit dateCubit;

  EmployeesCubit(
    this.dateCubit,
    this.businessesRepository,
    @factoryParam this.businessId,
    this.employeeRepository,
  ) : super(const EmployeesState.initial()) {
    _init();
  }

  @override
  Future<void> close() async {
    _employeesSub.cancel();
    super.close();
  }

  _init() {
    _employeesSub = employeeRepository.watchEmployees(businessId).listen((employees) {
      emit(EmployeesState.loaded(employees));
    });

    state.maybeWhen(
      orElse: () async {
        List<Employee> result =
            await employeeRepository.getTotalEmployeesInBusiness(businessId: businessId);
        emit(EmployeesState.loaded(result));
      },
    );
  }

  addEmployee(Employee employee) {
    employeeRepository.addEmployer(employee.copyWith(businessId: businessId));
  }

  firedEmployee(Employee employee) {
    dateCubit.state.whenOrNull(loaded: (date) {
      employeeRepository.checkFiredEmployee(employee.copyWith(fired: date.addDate(days: 30)));
    });
  }

  @override
  EmployeesState? fromJson(Map<String, dynamic> json) {
    return EmployeesState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(EmployeesState state) {
    return state.toJson();
  }
}
