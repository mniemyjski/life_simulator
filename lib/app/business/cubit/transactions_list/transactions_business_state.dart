part of 'transactions_business_cubit.dart';

@freezed
class TransactionsBusinessState with _$TransactionsBusinessState {
  const factory TransactionsBusinessState.initial() = Initial;
  const factory TransactionsBusinessState.loading() = Loading;
  factory TransactionsBusinessState.loaded(
      {required List<Transaction> transactions, required DateTime dateTime}) = Loaded;

  factory TransactionsBusinessState.fromJson(Map<String, dynamic> json) =>
      _$TransactionsBusinessStateFromJson(json);
}
