import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:richeable/app/stock_market/models/instrument/instrument.dart';
import 'package:richeable/repositories/transactions_repository.dart';

import '../../../date/cubit/date_cubit.dart';
import '../../models/exchange/exchange.dart';
import '../../repositories/stock_market_repository.dart';

part 'exchanges_cubit.freezed.dart';
part 'exchanges_cubit.g.dart';
part 'exchanges_state.dart';

@injectable
class ExchangesCubit extends Cubit<ExchangesState> {
  final StockMarketRepository _stockMarketRepository;
  final TransactionsRepository _transactionsRepository;
  late StreamSubscription _exchangesSub;

  final DateCubit _dateCubit;

  final int instrumentId;

  ExchangesCubit(
    @factoryParam this.instrumentId,
    this._stockMarketRepository,
    this._dateCubit,
    this._transactionsRepository,
  ) : super(const ExchangesState.initial()) {
    _init();
  }

  @override
  Future<void> close() async {
    _exchangesSub.cancel();
    super.close();
  }

  _init() {
    state.whenOrNull(initial: () async {
      List<Exchange> result =
          await _stockMarketRepository.getAllExchangesForInstrument(instrumentId);
      emit(ExchangesState.loaded(result));
    });

    _exchangesSub = _stockMarketRepository.exchangesWatcher().listen((event) async {
      List<Exchange> result =
          await _stockMarketRepository.getAllExchangesForInstrument(instrumentId);
      emit(ExchangesState.loaded(result));
    });
  }

  Future<String?> buy({
    required int instrumentId,
    required double count,
  }) async {
    return _dateCubit.state.maybeWhen(
        orElse: () => 'error',
        loaded: (date) async {
          return await _stockMarketRepository.buy(
            instrumentId: instrumentId,
            count: count,
            dateCre: date,
          );
        });
  }

  Future<String?> sell({
    required ENameInstrument eNameInstrument,
    required double count,
  }) async {
    return _dateCubit.state.maybeWhen(
        orElse: () => 'error',
        loaded: (date) async {
          return await _stockMarketRepository.sell(
            instrumentId: instrumentId,
            count: count,
            dateCre: date,
          );
        });
    // return _stockMarketCubit.state.maybeWhen(
    //     loaded: (market) {
    //       Instrument instrument = market.where((e) => e.uid == idInstrument).first;
    //       double lastClose = instrument.lastClose;
    //
    //       return _dateCubit.state.maybeWhen(
    //           loaded: (date) {
    //             return state.maybeWhen(
    //                 loaded: (transactions) {
    //                   List<Exchange> oldTransactions = List.from(
    //                       transactions.where((e) => e.eNameInstrument.uid == instrument.uid));
    //                   List<Exchange> result = [];
    //                   double addMoney = 0;
    //                   double tCount = count;
    //
    //                   for (Exchange i in oldTransactions) {
    //                     if (i.count > tCount && tCount > 0) {
    //                       result.add(i.copyWith(count: i.count - tCount));
    //                       tCount -= i.count;
    //                       addMoney += i.count * lastClose;
    //                     } else if (i.count == tCount && tCount > 0) {
    //                       result.add(i.copyWith(count: 0, close: true));
    //                       addMoney += i.count * lastClose;
    //                     } else if (i.count < tCount && tCount > 0) {
    //                       result.add(i.copyWith(count: 0, close: true));
    //                       addMoney += i.count * lastClose;
    //                     } else if (tCount == 0) {
    //                       result.add(i);
    //                     }
    //                   }
    //
    //                   _moneyCubit.addTransaction(
    //                       value: addMoney,
    //                       eTypeTransactionSource: ETypeTransactionSource.market,
    //                       dateTime: date);
    //                   emit(ExchangesState.loaded(result));
    //                 },
    //                 orElse: () => 'error');
    //           },
    //           orElse: () => 'error');
    //     },
    //     orElse: () => 'error');
  }
}
