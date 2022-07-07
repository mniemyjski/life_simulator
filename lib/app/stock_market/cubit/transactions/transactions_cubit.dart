import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../../date/cubit/date_cubit.dart';
import '../../../money/cubit/money_cubit.dart';
import '../../../new_game/new_game_cubit.dart';
import '../../models/instrument/instrument.dart';
import '../../models/transaction/transaction.dart';
import '../stock_market/stock_market_cubit.dart';

part 'transactions_cubit.freezed.dart';
part 'transactions_cubit.g.dart';
part 'transactions_state.dart';

@lazySingleton
class TransactionsCubit extends HydratedCubit<TransactionsState> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  final DateCubit _dateCubit;
  late StreamSubscription _dateSub;

  final StockMarketCubit _stockMarketCubit;
  final MoneyCubit _moneyCubit;

  TransactionsCubit(this._newGameCubit, this._dateCubit, this._stockMarketCubit, this._moneyCubit)
      : super(const TransactionsState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    _dateSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(const TransactionsState.loaded([]));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(const TransactionsState.loaded([]));
    });
  }

  String buy({
    required String idInstrument,
    required double count,
  }) {
    return _stockMarketCubit.state.maybeWhen(
        loaded: (market) {
          Instrument instrument = market.where((e) => e.id == idInstrument).first;

          if (_moneyCubit.state < (count * instrument.candles.last.close)) {
            return "You don't have enough money";
          }

          return _dateCubit.state.maybeWhen(
              loaded: (date) {
                return state.maybeWhen(
                    loaded: (transactions) {
                      var uuid = const Uuid();
                      List<Transaction> result = List.from(transactions);
                      Transaction newTransaction = Transaction(
                          id: uuid.v1(), instrument: instrument, count: count, datCre: date);

                      result.add(newTransaction);
                      _moneyCubit.change(-instrument.candles.last.close * count);
                      emit(TransactionsState.loaded(result));
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
        loaded: (market) {
          Instrument instrument = market.where((e) => e.id == idInstrument).first;

          return _dateCubit.state.maybeWhen(
              loaded: (date) {
                return state.maybeWhen(
                    loaded: (transactions) {
                      List<Transaction> oldTransactions =
                          List.from(transactions.where((e) => e.instrument.id == instrument.id));
                      List<Transaction> result = [];
                      double addMoney = 0;
                      double tCount = count;

                      for (Transaction i in oldTransactions) {
                        if (i.count > tCount && tCount > 0) {
                          result.add(i.copyWith(count: i.count - tCount));
                          tCount -= i.count;
                          addMoney += i.count * instrument.candles.last.close;
                        } else if (i.count == tCount && tCount > 0) {
                          result.add(i.copyWith(count: 0, close: true));
                          addMoney += i.count * instrument.candles.last.close;
                        } else if (i.count < tCount && tCount > 0) {
                          result.add(i.copyWith(count: 0, close: true));
                          addMoney += i.count * instrument.candles.last.close;
                        } else if (tCount == 0) {
                          result.add(i);
                        }
                      }

                      _moneyCubit.change(addMoney);
                      emit(TransactionsState.loaded(result));
                      return 'Succeed';
                    },
                    orElse: () => 'error');
              },
              orElse: () => 'error');
        },
        orElse: () => 'error');
  }

  @override
  TransactionsState? fromJson(Map<String, dynamic> json) {
    return TransactionsState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(TransactionsState state) {
    return state.toJson();
  }
}
