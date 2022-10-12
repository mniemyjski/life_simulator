import 'package:richeable/app/business/models/employee/employee_model.dart';

abstract class EmployeeData {
  static List<Employee> get(ETypeEmployees eTypeEmployees) {
    switch (eTypeEmployees) {
      case ETypeEmployees.worker:
        return _workers();
      case ETypeEmployees.scientist:
        return _scientists();
      case ETypeEmployees.accountant:
        return _accountants();
      case ETypeEmployees.analyst:
        return _analysts();
      case ETypeEmployees.manager:
        return _managers();
      case ETypeEmployees.marketer:
        return _marketer();
    }
  }

  static List<Employee> _workers() {
    return [
      const Employee(
        eTypeEmployees: ETypeEmployees.worker,
        cost: 1000,
        efficiency: 0.4,
        rating: 1,
      ),
      const Employee(
        eTypeEmployees: ETypeEmployees.worker,
        cost: 2000,
        efficiency: 0.6,
        rating: 2,
      ),
      const Employee(
        eTypeEmployees: ETypeEmployees.worker,
        cost: 3000,
        efficiency: 0.8,
        rating: 3,
      ),
      const Employee(
        eTypeEmployees: ETypeEmployees.worker,
        cost: 4000,
        efficiency: 1,
        rating: 4,
      ),
      const Employee(
        eTypeEmployees: ETypeEmployees.worker,
        cost: 5000,
        efficiency: 1.2,
        rating: 5,
      ),
    ];
  }

  static List<Employee> _scientists() {
    return [
      const Employee(
        eTypeEmployees: ETypeEmployees.scientist,
        cost: 2000,
        efficiency: 0.4,
        rating: 1,
      ),
      const Employee(
        eTypeEmployees: ETypeEmployees.scientist,
        cost: 3000,
        efficiency: 0.6,
        rating: 2,
      ),
      const Employee(
        eTypeEmployees: ETypeEmployees.scientist,
        cost: 4000,
        efficiency: 0.8,
        rating: 3,
      ),
      const Employee(
        eTypeEmployees: ETypeEmployees.scientist,
        cost: 5000,
        efficiency: 1,
        rating: 4,
      ),
      const Employee(
        eTypeEmployees: ETypeEmployees.scientist,
        cost: 6000,
        efficiency: 1.2,
        rating: 5,
      ),
    ];
  }

  static List<Employee> _accountants() {
    return [
      const Employee(
        eTypeEmployees: ETypeEmployees.accountant,
        cost: 2000,
        efficiency: 0.4,
        rating: 1,
      ),
      const Employee(
        eTypeEmployees: ETypeEmployees.accountant,
        cost: 3000,
        efficiency: 0.6,
        rating: 2,
      ),
      const Employee(
        eTypeEmployees: ETypeEmployees.accountant,
        cost: 4000,
        efficiency: 0.8,
        rating: 3,
      ),
      const Employee(
        eTypeEmployees: ETypeEmployees.accountant,
        cost: 5000,
        efficiency: 1,
        rating: 4,
      ),
      const Employee(
        eTypeEmployees: ETypeEmployees.accountant,
        cost: 6000,
        efficiency: 1.2,
        rating: 5,
      ),
    ];
  }

  static List<Employee> _managers() {
    return [
      const Employee(
        eTypeEmployees: ETypeEmployees.manager,
        cost: 2000,
        efficiency: 0.4,
        rating: 1,
      ),
      const Employee(
        eTypeEmployees: ETypeEmployees.manager,
        cost: 3000,
        efficiency: 0.6,
        rating: 2,
      ),
      const Employee(
        eTypeEmployees: ETypeEmployees.manager,
        cost: 4000,
        efficiency: 0.8,
        rating: 3,
      ),
      const Employee(
        eTypeEmployees: ETypeEmployees.manager,
        cost: 5000,
        efficiency: 1,
        rating: 4,
      ),
      const Employee(
        eTypeEmployees: ETypeEmployees.manager,
        cost: 6000,
        efficiency: 1.2,
        rating: 5,
      ),
    ];
  }

  static List<Employee> _marketer() {
    return [
      const Employee(
        eTypeEmployees: ETypeEmployees.marketer,
        cost: 2000,
        efficiency: 0.4,
        rating: 1,
      ),
      const Employee(
        eTypeEmployees: ETypeEmployees.marketer,
        cost: 3000,
        efficiency: 0.6,
        rating: 2,
      ),
      const Employee(
        eTypeEmployees: ETypeEmployees.marketer,
        cost: 4000,
        efficiency: 0.8,
        rating: 3,
      ),
      const Employee(
        eTypeEmployees: ETypeEmployees.marketer,
        cost: 5000,
        efficiency: 1,
        rating: 4,
      ),
      const Employee(
        eTypeEmployees: ETypeEmployees.marketer,
        cost: 6000,
        efficiency: 1.2,
        rating: 5,
      ),
    ];
  }

  static List<Employee> _analysts() {
    return [
      const Employee(
        eTypeEmployees: ETypeEmployees.analyst,
        cost: 2000,
        efficiency: 0.4,
        rating: 1,
      ),
      const Employee(
        eTypeEmployees: ETypeEmployees.analyst,
        cost: 3000,
        efficiency: 0.6,
        rating: 2,
      ),
      const Employee(
        eTypeEmployees: ETypeEmployees.analyst,
        cost: 4000,
        efficiency: 0.8,
        rating: 3,
      ),
      const Employee(
        eTypeEmployees: ETypeEmployees.analyst,
        cost: 5000,
        efficiency: 1,
        rating: 4,
      ),
      const Employee(
        eTypeEmployees: ETypeEmployees.analyst,
        cost: 6000,
        efficiency: 1.2,
        rating: 5,
      ),
    ];
  }
}
