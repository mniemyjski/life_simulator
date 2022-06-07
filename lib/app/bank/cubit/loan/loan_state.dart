part of 'loan_cubit.dart';

@freezed
class LoanState with _$LoanState {
  const factory LoanState.initial() = Initial;
  const factory LoanState.loading() = Loading;
  const factory LoanState.loaded(List<Loan> Loans) = Loaded;

  factory LoanState.fromJson(Map<String, dynamic> json) => _$LoanStateFromJson(json);
}
