import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

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
  giftFromParents,
  lostMoney,
  advertisement,
}

@Collection(ignore: {'props', 'stringify'})
class Transaction extends Equatable {
  final Id? id;
  final String? idSource;
  final double value;
  @enumerated
  final ETypeTransaction eTypeTransaction;
  @enumerated
  final ETypeTransactionSource eTypeTransactionSource;
  final DateTime dateCre;
  @Index()
  final DateTime monthCre;
  @Index()
  final DateTime yearCre;

  Transaction({
    this.id,
    this.idSource = 'user',
    required this.value,
    required this.eTypeTransactionSource,
    required this.dateCre,
  })  : eTypeTransaction = value > 0 ? ETypeTransaction.revenue : ETypeTransaction.expense,
        monthCre = DateTime(dateCre.year, dateCre.month, 1),
        yearCre = DateTime(dateCre.year, 1, 1);

  @override
  List<Object?> get props => [
        id,
        idSource,
        value,
        eTypeTransaction,
        eTypeTransactionSource,
        dateCre,
        monthCre,
        yearCre,
      ];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'idSource': idSource,
      'value': value,
      'eTypeTransaction': eTypeTransaction,
      'eTypeTransactionSource': eTypeTransactionSource,
      'dateCre': dateCre,
      'monthCre': monthCre,
      'yearCre': yearCre,
    };
  }

  factory Transaction.fromJson(Map<String, dynamic> map) {
    return Transaction(
        id: map['id'] as Id,
        idSource: map['idSource'] as String,
        value: map['value'] as double,
        eTypeTransactionSource: map['eTypeTransactionSource'] as ETypeTransactionSource,
        dateCre: map['dateCre'] as DateTime);
  }
}
