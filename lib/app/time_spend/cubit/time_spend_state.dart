part of 'time_spend_cubit.dart';

@freezed
class TimeSpendState with _$TimeSpendState {
  const factory TimeSpendState.initial(TimeSpend? timeSpend) = Initial;
  const factory TimeSpendState.loading() = Loading;
  const factory TimeSpendState.loaded(TimeSpend timeSpend) = Loaded;

  factory TimeSpendState.fromJson(Map<String, dynamic> json) => _$TimeSpendStateFromJson(json);
}
