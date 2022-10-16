import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:richeable/repositories/employee_repository.dart';
import 'package:richeable/repositories/transactions_repository.dart';

import '../../../../repositories/businesses_repository.dart';
import '../../../money/cubit/money/money_cubit.dart';
import '../../../money/models/transaction/transaction_model.dart';
import '../../../new_game/new_game_cubit.dart';
import '../../models/business/business_model.dart';
import '../../services/business_service.dart';

part 'businesses_cubit.freezed.dart';
part 'businesses_cubit.g.dart';
part 'businesses_state.dart';

@lazySingleton
class BusinessesCubit extends HydratedCubit<BusinessesState> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  final BusinessesRepository _businessesRepository;
  final TransactionsRepository _transactionsRepository;
  late StreamSubscription _businessesSub;

  final EmployeeRepository _employeeRepository;
  final MoneyCubit _moneyCubit;
  final BusinessService _businessService;

  BusinessesCubit(
    this._newGameCubit,
    this._businessesRepository,
    this._employeeRepository,
    this._moneyCubit,
    this._transactionsRepository,
    this._businessService,
  ) : super(const BusinessesState.initial()) {
    _newGame();

    _businessesSub = _businessesRepository.watchBusiness().listen((businesses) {
      emit(BusinessesState.loaded(businesses));
    });
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    _businessesSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(BusinessesState.loaded([]));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(BusinessesState.loaded([]));
    });
  }

  counting(DateTime dateTime) {
    // _businessService.count(dateTime);
    if (dateTime.day == 10) {
      state.whenOrNull(loaded: (businesses) async {
        for (var element in businesses) {
          final double cost = await _employeeRepository.getSalaryToPay(element.id);
          if (cost != 0) {
            _moneyCubit.addTransaction(
              idSource: element.id,
              dateTime: dateTime,
              value: -cost,
              eTypeTransactionSource: ETypeTransactionSource.employeeWages,
            );
          }
        }
      });
    }
    _employeeRepository.removeFiredEmployee(dateTime);
  }

  String? create(Business business) {
    _businessesRepository.addBusiness(business);
    return null;
  }

  remove(Business business) {
    _businessesRepository.removeBusiness(business);
  }

  increaseMaxWorkers(Business business) {
    _businessesRepository.updateBusiness(business.copyWith(maxWorkers: business.maxWorkers + 10));
  }

  increaseMaxScientist(Business business) {
    _businessesRepository
        .updateBusiness(business.copyWith(maxScientist: business.maxScientist + 2));
  }

  increaseMaxAccountant(Business business) {
    _businessesRepository
        .updateBusiness(business.copyWith(maxAccountant: business.maxAccountant + 1));
  }

  increaseMaxAnalyst(Business business) {
    _businessesRepository.updateBusiness(business.copyWith(maxAnalyst: business.maxAnalyst + 1));
  }

  increaseMaxManager(Business business) {
    _businessesRepository.updateBusiness(business.copyWith(maxManager: business.maxManager + 1));
  }

  increaseMaxMarketer(Business business) {
    _businessesRepository.updateBusiness(business.copyWith(maxMarketer: business.maxMarketer + 1));
  }

  @override
  BusinessesState? fromJson(Map<String, dynamic> json) {
    return BusinessesState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(BusinessesState state) {
    return state.toJson();
  }
}
