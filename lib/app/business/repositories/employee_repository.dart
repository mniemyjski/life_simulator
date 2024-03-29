import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:richeable/app/business/models/employee/employee_model.dart';

import '../../../config/injectable/app_module.dart';
import '../../../config/injectable/injection.dart';
import '../../money/models/transaction/transaction_model.dart';
import '../models/business/business_model.dart';

@lazySingleton
class EmployeeRepository {
  late Isar _isar;

  EmployeeRepository() {
    _isar = getIt<AppModule>().instance;
  }

  Future counting(DateTime dateTime) async {
    if (dateTime.day != 10) return;

    await _isar.writeTxn(() async {
      List<Business> businesses = await _isar.business.where().findAll();
      for (var element in businesses) {
        final double cost = await getSalaryToPay(element.id);
        if (cost != 0) {
          Transaction transaction = Transaction(
            idSource: element.id,
            value: -cost,
            eTypeTransactionSource: ETypeTransactionSource.employeeWages,
            dateCre: dateTime,
          );
          await _isar.transactions.put(transaction);
        }
      }
      removeFiredEmployee(dateTime);
    });
  }

  Future removeFiredEmployee(DateTime dateTime) async {
    await _isar.writeTxn(() async {
      await _isar.employees.filter().firedEqualTo(dateTime).deleteAll();
    });
  }

  Future checkFiredEmployee(Employee employee) async {
    await _isar.writeTxn(() async {
      await _isar.employees.delete(employee.id);
      await _isar.employees.put(employee);
    });
  }

  Future _countEmployeesInBusiness({
    required ETypeEmployees eTypeEmployees,
    required int businessId,
  }) async {
    return await _isar.employees
        .filter()
        .businessIdEqualTo(businessId)
        .eTypeEmployeesEqualTo(eTypeEmployees)
        .count();
  }

  Future<double> getSalaryToPay(int id) async {
    return await _isar.employees.filter().businessIdEqualTo(id).costProperty().sum();
  }

  getTotalEmployeesInBusiness({
    required int businessId,
  }) async {
    return await _isar.employees.filter().businessIdEqualTo(businessId).findAll();
  }

  getFreeEmployeesInBusiness(int businessId) async {
    return await _isar.employees.filter().businessIdEqualTo(businessId).productIdIsNull().findAll();
  }

  getBusyEmployeesInBusiness({
    required int businessId,
    required int productId,
  }) async {
    return await _isar.employees
        .filter()
        .businessIdEqualTo(businessId)
        .productIdEqualTo(productId)
        .findAll();
  }

  Future assignEmployeeToProduct({
    required int businessId,
    required int productId,
    required int lvl,
    required ETypeEmployees eTypeEmployees,
  }) async {
    return await _isar.writeTxn(() async {
      Employee? employee = await _isar.employees
          .filter()
          .businessIdEqualTo(businessId)
          .productIdIsNull()
          .ratingEqualTo(lvl)
          .eTypeEmployeesEqualTo(eTypeEmployees)
          .findFirst();

      if (employee == null) return;

      await _isar.employees.put(employee.copyWith(productId: productId));
    });
  }

  Future unAssignEmployeeFromProduct({
    required int businessId,
    required int productId,
    required int lvl,
    required ETypeEmployees eTypeEmployees,
  }) async {
    return await _isar.writeTxn(() async {
      Employee? employee = await _isar.employees
          .filter()
          .businessIdEqualTo(businessId)
          .productIdEqualTo(productId)
          .ratingEqualTo(lvl)
          .eTypeEmployeesEqualTo(eTypeEmployees)
          .findFirst();

      if (employee == null) return;

      await _isar.employees.put(employee.copyWith(productId: null));
    });
  }

  Future<String?> addEmployer(Employee employee) async {
    final business = await _isar.business.get(employee.businessId!) as Business;
    bool space = false;

    switch (employee.eTypeEmployees) {
      case ETypeEmployees.worker:
        if (await _countEmployeesInBusiness(
                eTypeEmployees: employee.eTypeEmployees, businessId: employee.businessId!) <
            business.maxWorkers) {
          space = true;
        } else {
          space = false;
        }
        break;
      case ETypeEmployees.scientist:
        if (await _countEmployeesInBusiness(
                eTypeEmployees: employee.eTypeEmployees, businessId: employee.businessId!) <
            business.maxScientist) {
          space = true;
        } else {
          space = false;
        }
        break;
      case ETypeEmployees.accountant:
        if (await _countEmployeesInBusiness(
                eTypeEmployees: employee.eTypeEmployees, businessId: employee.businessId!) <
            business.maxAccountant) {
          space = true;
        } else {
          space = false;
        }
        break;
      case ETypeEmployees.analyst:
        if (await _countEmployeesInBusiness(
                eTypeEmployees: employee.eTypeEmployees, businessId: employee.businessId!) <
            business.maxAnalyst) {
          space = true;
        } else {
          space = false;
        }
        break;
      case ETypeEmployees.manager:
        if (await _countEmployeesInBusiness(
                eTypeEmployees: employee.eTypeEmployees, businessId: employee.businessId!) <
            business.maxManager) {
          space = true;
        } else {
          space = false;
        }
        break;
      case ETypeEmployees.marketer:
        if (await _countEmployeesInBusiness(
                eTypeEmployees: employee.eTypeEmployees, businessId: employee.businessId!) <
            business.maxMarketer) {
          space = true;
        } else {
          space = false;
        }
        break;
    }

    if (space) {
      await _isar.writeTxn(() async {
        await _isar.employees.put(employee);
        final result = await _countingBusiness(business.id);
        await _isar.business.delete(business.id);
        await _isar.business.put(result);
      });
    } else {
      return 'youDontHaveEnoughSpace';
    }
  }

  Future<Business> _countingBusiness(int businessId) async {
    Business business = await _isar.business.get(businessId) as Business;
    return business.copyWith(
      countWorkers: await _countEmployees(
        businessId: businessId,
        eTypeEmployees: ETypeEmployees.worker,
      ),
      countScientist: await _countEmployees(
        businessId: businessId,
        eTypeEmployees: ETypeEmployees.scientist,
      ),
      countAccountant: await _countEmployees(
        businessId: businessId,
        eTypeEmployees: ETypeEmployees.accountant,
      ),
      countAnalyst: await _countEmployees(
        businessId: businessId,
        eTypeEmployees: ETypeEmployees.analyst,
      ),
      countManager: await _countEmployees(
        businessId: businessId,
        eTypeEmployees: ETypeEmployees.manager,
      ),
      countMarketer: await _countEmployees(
        businessId: businessId,
        eTypeEmployees: ETypeEmployees.marketer,
      ),
    );
  }

  Future<int> _countEmployees(
      {required int businessId, required ETypeEmployees eTypeEmployees}) async {
    return await _isar.employees
        .filter()
        .businessIdEqualTo(businessId)
        .eTypeEmployeesEqualTo(eTypeEmployees)
        .count();
  }

  Stream<List<Employee>> watchEmployees(int id) {
    return _isar.employees.filter().businessIdEqualTo(id).watch();
  }
}
