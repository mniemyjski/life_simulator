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
  home,
  food,
  transport,
  learning,
  bankBorrowed,
  bankDeposit,
  bankInterest,
  medicine,
  unpaidTaxes,
  addMoney,
  lostMoney,
  advertisement,
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
