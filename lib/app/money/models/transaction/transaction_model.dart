import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

enum ETypeTransaction {
  revenue,
  expense,
}

enum ETypeTransactionSource {
  job,
  freelance,
  asset,
  market,
  house,
  food,
  transport,
  learning,
  bankBorrowed,
  bankDeposit,
  bankInterest,
  medicine,
  unpaidTaxes,
  addMoney,
  lostMoney
}

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required String id,
    required double value,
    required ETypeTransaction eTypeTransaction,
    required ETypeTransactionSource eTypeTransactionSource,
    required DateTime dateCre,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);
}
