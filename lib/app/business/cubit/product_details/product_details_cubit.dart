import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:richeable/app/business/repositories/employee_repository.dart';

import '../../models/employee/employee_model.dart';
import '../../models/product/product_model.dart';
import '../../repositories/products_repository.dart';

part 'product_details_cubit.freezed.dart';
part 'product_details_cubit.g.dart';
part 'product_details_state.dart';

//ToDo separate cubit to FreeEmployeesCubit, BusyEmployeesInBusinessCubit, ProductDetailsCubit

@injectable
class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  late StreamSubscription _employeeSub;
  late StreamSubscription _productSub;
  final EmployeeRepository _employeeRepository;
  final ProductsRepository _productsRepository;
  final int businessId;
  final int productId;

  ProductDetailsCubit(
    this._employeeRepository,
    this._productsRepository,
    @factoryParam this.businessId,
    @factoryParam this.productId,
  ) : super(const ProductDetailsState.initial()) {
    state.maybeWhen(orElse: () async {
      Product product = await _productsRepository.get(productId) as Product;
      List<Employee> free = await _employeeRepository.getFreeEmployeesInBusiness(businessId);
      List<Employee> work = await _employeeRepository.getBusyEmployeesInBusiness(
          businessId: businessId, productId: productId);

      emit(ProductDetailsState.loaded(product: product, free: free, busy: work));
    });

    _employeeSub = _employeeRepository.watchEmployees(businessId).listen((_) async {
      Product product = await _productsRepository.get(productId) as Product;
      List<Employee> free = await _employeeRepository.getFreeEmployeesInBusiness(businessId);
      List<Employee> work = await _employeeRepository.getBusyEmployeesInBusiness(
          businessId: businessId, productId: productId);

      emit(ProductDetailsState.loaded(product: product, free: free, busy: work));
    });

    _productSub = _productsRepository.watch(businessId).listen((_) async {
      Product product = await _productsRepository.get(productId) as Product;
      List<Employee> free = await _employeeRepository.getFreeEmployeesInBusiness(businessId);
      List<Employee> work = await _employeeRepository.getBusyEmployeesInBusiness(
          businessId: businessId, productId: productId);

      emit(ProductDetailsState.loaded(product: product, free: free, busy: work));
    });
  }

  @override
  Future<void> close() {
    _employeeSub.cancel();
    _productSub.cancel();
    return super.close();
  }

  int getFree({required int lvl, required ETypeEmployees eTypeEmployees}) {
    return state.maybeWhen(
        orElse: () => 0,
        loaded: (product, free, busy) {
          return free.where((e) => e.rating == lvl && e.eTypeEmployees == eTypeEmployees).length;
        });
  }

  int getBusy({required int lvl, required ETypeEmployees eTypeEmployees}) {
    return state.maybeWhen(
        orElse: () => 0,
        loaded: (product, free, busy) {
          return busy.where((e) => e.rating == lvl && e.eTypeEmployees == eTypeEmployees).length;
        });
  }

  String efficient(ETypeEmployees eTypeEmployees) {
    return state.maybeWhen(
        orElse: () => '0',
        loaded: (product, free, busy) {
          double eff = 0;
          for (var element in busy) {
            if (eTypeEmployees == element.eTypeEmployees) eff = eff + element.efficiency;
          }
          return eff.toStringAsFixed(2);
        });
  }

  assign({required int lvl, required ETypeEmployees eTypeEmployees}) {
    _employeeRepository.assignEmployeeToProduct(
        businessId: businessId, productId: productId, lvl: lvl, eTypeEmployees: eTypeEmployees);
  }

  unAssign({required int lvl, required ETypeEmployees eTypeEmployees}) {
    _employeeRepository.unAssignEmployeeFromProduct(
        businessId: businessId, productId: productId, lvl: lvl, eTypeEmployees: eTypeEmployees);
  }

  Future remove() async {
    _productsRepository.delete(productId);
  }

  setMonthlyMarketing(double value) async {
    Product? product = await _productsRepository.get(productId);
    if (product == null) return;

    _productsRepository.setMonthlyMarketing(product: product, value: value);
  }
}
