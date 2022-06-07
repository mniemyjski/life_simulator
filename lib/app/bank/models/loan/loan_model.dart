import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_model.freezed.dart';
part 'loan_model.g.dart';

@freezed
class Loan with _$Loan {
  const factory Loan({
    required double borrowed,
    required double left,
    required double monthlyRate,
    required double interest,
    required int turns,
    required int turnsToEnd,
  }) = _Loan;

  factory Loan.fromJson(Map<String, dynamic> json) => _$LoanFromJson(json);
}
