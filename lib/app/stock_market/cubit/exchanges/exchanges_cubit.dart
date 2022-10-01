import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../../date/cubit/date_cubit.dart';
import '../../../money/cubit/money/money_cubit.dart';
import '../../../money/models/transaction/transaction_model.dart';
import '../../../new_game/new_game_cubit.dart';
import '../../models/candle/candle.dart';
import '../../models/exchange/exchange.dart';
import '../../models/instrument/instrument.dart';
import '../stock_market/stock_market_cubit.dart';

part 'exchanges_cubit.freezed.dart';
part 'exchanges_cubit.g.dart';
part 'exchanges_state.dart';

@lazySingleton
class ExchangesCubit extends HydratedCubit<ExchangesState> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  final DateCubit _dateCubit;

  final StockMarketCubit _stockMarketCubit;
  final MoneyCubit _moneyCubit;

  ExchangesCubit(
    this._newGameCubit,
    this._dateCubit,
    this._stockMarketCubit,
    this._moneyCubit,
  ) : super(const ExchangesState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(const ExchangesState.loaded([]));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(const ExchangesState.loaded([]));
    });
  }

  String buy({
    required String idInstrument,
    required double count,
  }) {
    return _stockMarketCubit.state.maybeWhen(
        loaded: (market, candles) {
          Instrument instrument = market.where((e) => e.id == idInstrument).first;
          Candle lastCandle = candles.where((e) => e.instrument == instrument.name).first;

          if (_moneyCubit.getBalance() < (count * lastCandle.close)) {
            return "You don't have enough money";
          }

          return _dateCubit.state.maybeWhen(
              loaded: (date) {
                return state.maybeWhen(
                    loaded: (transactions) {
                      var uuid = const Uuid();
                      List<Exchange> result = List.from(transactions);
                      Exchange newTransaction = Exchange(
                          id: uuid.v1(), instrument: instrument, count: count, datCre: date);

                      result.add(newTransaction);

                      _moneyCubit.addTransaction(
                          value: -lastCandle.close * count,
                          eTypeTransactionSource: ETypeTransactionSource.market);
                      emit(ExchangesState.loaded(result));
                      return 'Succeed';
                    },
                    orElse: () => 'error');
              },
              orElse: () => 'error');
        },
        orElse: () => 'error');
  }

  String sell({required String idInstrument, required double count}) {
    return _stockMarketCubit.state.maybeWhen(
        loaded: (market, candles) {
          Instrument instrument = market.where((e) => e.id == idInstrument).first;
          Candle lastCandle = candles.where((e) => e.instrument == instrument.name).first;

          return _dateCubit.state.maybeWhen(
              loaded: (date) {
                return state.maybeWhen(
                    loaded: (transactions) {
                      List<Exchange> oldTransactions =
                          List.from(transactions.where((e) => e.instrument.id == instrument.id));
                      List<Exchange> result = [];
                      double addMoney = 0;
                      double tCount = count;

                      for (Exchange i in oldTransactions) {
                        if (i.count > tCount && tCount > 0) {
                          result.add(i.copyWith(count: i.count - tCount));
                          tCount -= i.count;
                          addMoney += i.count * lastCandle.close;
                        } else if (i.count == tCount && tCount > 0) {
                          result.add(i.copyWith(count: 0, close: true));
                          addMoney += i.count * lastCandle.close;
                        } else if (i.count < tCount && tCount > 0) {
                          result.add(i.copyWith(count: 0, close: true));
                          addMoney += i.count * lastCandle.close;
                        } else if (tCount == 0) {
                          result.add(i);
                        }
                      }

                      _moneyCubit.addTransaction(
                          value: addMoney, eTypeTransactionSource: ETypeTransactionSource.market);
                      emit(ExchangesState.loaded(result));
                      return 'Succeed';
                    },
                    orElse: () => 'error');
              },
              orElse: () => 'error');
        },
        orElse: () => 'error');
  }

  @override
  ExchangesState? fromJson(Map<String, dynamic> json) {
    return ExchangesState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(ExchangesState state) {
    return state.toJson();
  }
}
