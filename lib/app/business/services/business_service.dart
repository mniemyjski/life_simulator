import 'package:injectable/injectable.dart';

import '../../../repositories/businesses_repository.dart';
import '../../../repositories/employee_repository.dart';
import '../../../repositories/transactions_repository.dart';
import '../../money/models/transaction/transaction_model.dart';
import '../models/business/business_model.dart';

@lazySingleton
class BusinessService {
  final BusinessesRepository _businessesRepository;
  final EmployeeRepository _employeeRepository;
  final TransactionsRepository _transactionRepository;

  BusinessService(
    this._businessesRepository,
    this._employeeRepository,
    this._transactionRepository,
  );

  count(DateTime dateTime) async {
    if (dateTime.day == 10) {
      List<Business> businesses = await _businessesRepository.getBusinesses();
      for (var element in businesses) {
        final double cost = await _employeeRepository.getSalaryToPay(element.id);
        if (cost != 0) {
          _transactionRepository.add(Transaction(
            idSource: element.id,
            value: -cost,
            eTypeTransactionSource: ETypeTransactionSource.employeeWages,
            dateCre: dateTime,
          ));
        }
      }
    }

    _employeeRepository.removeFiredEmployee(dateTime);
  }
}
