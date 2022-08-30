part of 'income_cubit.dart';

@freezed
class IncomeState with _$IncomeState {
  const factory IncomeState.initial() = Initial;
  const factory IncomeState.loading() = Loading;
  const factory IncomeState.loaded(List<Income> incomes) = Loaded;

  factory IncomeState.fromJson(Map<String, dynamic> json) => _$IncomeStateFromJson(json);
}
