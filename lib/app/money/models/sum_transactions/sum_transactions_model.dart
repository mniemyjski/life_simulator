import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:life_simulator/app/money/models/transaction/transaction_model.dart';

part 'sum_transactions_model.freezed.dart';
part 'sum_transactions_model.g.dart';

@freezed
class SumTransactions with _$SumTransactions {
  const factory SumTransactions({
    required ETypeTransactionSource eTypeTransactionSource,
    required double value,
  }) = _SumTransactions;

  factory SumTransactions.fromJson(Map<String, dynamic> json) => _$SumTransactionsFromJson(json);
}
