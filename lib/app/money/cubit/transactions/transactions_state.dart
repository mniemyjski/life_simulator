part of 'transactions_cubit.dart';

@freezed
class TransactionsState with _$TransactionsState {
  const factory TransactionsState.initial() = Initial;
  const factory TransactionsState.loading() = Loading;
  const factory TransactionsState.loaded(
      {required DateTime dateTime, required List<Transaction> transactions}) = Loaded;

  factory TransactionsState.fromJson(Map<String, dynamic> json) =>
      _$TransactionsStateFromJson(json);
}
