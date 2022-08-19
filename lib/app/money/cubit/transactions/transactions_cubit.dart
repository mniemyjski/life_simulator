import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../new_game/new_game_cubit.dart';
import '../../models/transaction/transaction_model.dart';

part 'transactions_cubit.freezed.dart';
part 'transactions_cubit.g.dart';
part 'transactions_state.dart';

@lazySingleton
class TransactionsCubit extends HydratedCubit<TransactionsState> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  TransactionsCubit(
    this._newGameCubit,
  ) : super(const TransactionsState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(const TransactionsState.loaded([]));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(const TransactionsState.loaded([]));
    });
  }

  bool add(Transaction transaction) {
    return state.maybeWhen(
        orElse: () => false,
        loaded: (transactions) {
          List<Transaction> result = List.of(transactions)..add(transaction);
          emit(TransactionsState.loaded(result));
          return true;
        });
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
