part of 'loan_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class LoanState with _$LoanState {
  const factory LoanState.initial() = Initial;
  const factory LoanState.loading() = Loading;
  factory LoanState.loaded(List<Loan> loans) = Loaded;

  factory LoanState.fromJson(Map<String, dynamic> json) => _$LoanStateFromJson(json);
}
