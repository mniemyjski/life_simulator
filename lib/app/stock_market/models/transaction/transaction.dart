import 'package:freezed_annotation/freezed_annotation.dart';

import '../instrument/instrument.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required String id,
    required Instrument instrument,
    required double count,
    required DateTime datCre,
    @Default(false) bool close,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);
}
