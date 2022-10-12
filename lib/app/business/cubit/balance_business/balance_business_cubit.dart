import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:richeable/app/money/models/transaction/transaction_model.dart';
import 'package:richeable/constants/constants.dart';

import '../../../../repositories/transactions_repository.dart';
import '../../../date/cubit/date_cubit.dart';

part 'balance_business_cubit.freezed.dart';
part 'balance_business_cubit.g.dart';
part 'balance_business_state.dart';

@injectable
class BalanceBusinessCubit extends Cubit<BalanceBusinessState> {
  final TransactionsRepository transactionsRepository;
  late StreamSubscription transactionsSub;

  final DateCubit dateCubit;
  final int businessId;

  BalanceBusinessCubit(
    this.transactionsRepository,
    this.dateCubit,
    @factoryParam this.businessId,
  ) : super(const BalanceBusinessState.initial()) {
    _init();
  }

  @override
  Future<void> close() async {
    Logger().wtf('dispose balance');
    transactionsSub.cancel();
    super.close();
  }

  _init() {
    state.whenOrNull(initial: () async {
      final double balance = await transactionsRepository.balanceForBusiness(businessId);
      emit(BalanceBusinessState.loaded(balance));
    });

    transactionsSub = transactionsRepository.watchLazyForBusiness(businessId).listen((event) async {
      final double balance = await transactionsRepository.balanceForBusiness(businessId);
      emit(BalanceBusinessState.loaded(balance));
    });
  }

  withdraw(double value) async {
    final balance = await transactionsRepository.balanceForBusiness(businessId);
    if (balance < value) return LocaleKeys.notEnoughMoney;

    dateCubit.state.whenOrNull(loaded: (date) {
      Transaction deposit = Transaction(
        idSource: businessId,
        value: -value,
        eTypeTransactionSource: ETypeTransactionSource.withdraw,
        dateCre: date,
      );

      Transaction withdraw = Transaction(
        value: value,
        eTypeTransactionSource: ETypeTransactionSource.deposit,
        dateCre: date,
      );

      transactionsRepository.add(deposit);
      transactionsRepository.add(withdraw);
    });
  }

  deposit(double value) async {
    final balance = await transactionsRepository.balance();
    if (balance < value) return LocaleKeys.notEnoughMoney;

    dateCubit.state.whenOrNull(loaded: (date) {
      Transaction deposit = Transaction(
        idSource: businessId,
        value: value,
        eTypeTransactionSource: ETypeTransactionSource.deposit,
        dateCre: date,
      );

      Transaction withdraw = Transaction(
        value: -value,
        eTypeTransactionSource: ETypeTransactionSource.withdraw,
        dateCre: date,
      );

      transactionsRepository.add(deposit);
      transactionsRepository.add(withdraw);
    });
  }
}
