import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:richeable/app/business/repositories/employee_repository.dart';

import '../../models/employee/employee_model.dart';

part 'product_details_cubit.freezed.dart';
part 'product_details_cubit.g.dart';
part 'product_details_state.dart';

@injectable
class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  late StreamSubscription _employeeSub;
  final EmployeeRepository _employeeRepository;
  final int businessId;
  final int productId;

  ProductDetailsCubit(
    this._employeeRepository,
    @factoryParam this.businessId,
    @factoryParam this.productId,
  ) : super(const ProductDetailsState.initial()) {
    state.maybeWhen(orElse: () async {
      List<Employee> free = await _employeeRepository.getFreeEmployeesInBusiness(businessId);
      List<Employee> work = await _employeeRepository.getWorkOnProductEmployeesInBusiness(
          businessId: businessId, productId: productId);

      emit(ProductDetailsState.loaded(free: free, work: work));
    });

    _employeeSub = _employeeRepository.watchEmployees(businessId).listen((products) async {
      List<Employee> free = await _employeeRepository.getFreeEmployeesInBusiness(businessId);
      List<Employee> work = await _employeeRepository.getWorkOnProductEmployeesInBusiness(
          businessId: businessId, productId: productId);

      emit(ProductDetailsState.loaded(free: free, work: work));
    });
  }

  int getFree(int rating) {
    return state.maybeWhen(
        orElse: () => 0,
        loaded: (free, work) {
          return free.where((e) => e.rating == rating).length;
        });
  }

  int getWork(int rating) {
    return state.maybeWhen(
        orElse: () => 0,
        loaded: (free, work) {
          return work.where((e) => e.rating == rating).length;
        });
  }

  String efficient() {
    return state.maybeWhen(
        orElse: () => '0',
        loaded: (free, work) {
          double eff = 0;
          for (var element in work) {
            eff = eff + element.efficiency;
          }
          return eff.toStringAsFixed(2);
        });
  }

  assign(int lvl) {
    _employeeRepository.assignToProduct(businessId: businessId, productId: productId, lvl: lvl);
  }

  unAssign(int lvl) {
    _employeeRepository.unAssignFromProduct(businessId: businessId, productId: productId, lvl: lvl);
  }
}
