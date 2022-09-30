part of 'money_cubit.dart';

@freezed
class MoneyState with _$MoneyState {
  const factory MoneyState.initial() = Initial;
  const factory MoneyState.loading() = Loading;
  const factory MoneyState.loaded(double value) = Loaded;

  factory MoneyState.fromJson(Map<String, dynamic> json) => _$MoneyStateFromJson(json);
}
