part of 'screen_transactions_cubit.dart';

@freezed
class ScreenTransactionsState with _$ScreenTransactionsState {
  const factory ScreenTransactionsState.initial() = Initial;
  const factory ScreenTransactionsState.loading() = Loading;
  const factory ScreenTransactionsState.loaded(
      {required DateTime dateTime, required List<Transaction> transactions}) = Loaded;

  factory ScreenTransactionsState.fromJson(Map<String, dynamic> json) =>
      _$ScreenTransactionsStateFromJson(json);
}
