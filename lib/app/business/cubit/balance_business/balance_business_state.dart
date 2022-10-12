part of 'balance_business_cubit.dart';

@freezed
class BalanceBusinessState with _$BalanceBusinessState {
  const factory BalanceBusinessState.initial() = Initial;
  const factory BalanceBusinessState.loading() = Loading;
  factory BalanceBusinessState.loaded(double value) = Loaded;

  factory BalanceBusinessState.fromJson(Map<String, dynamic> json) =>
      _$BalanceBusinessStateFromJson(json);
}
