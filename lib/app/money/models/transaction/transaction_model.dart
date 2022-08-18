enum ETypeTransaction { revenue, expense }

abstract class Transaction {
  final String id;
  final double value;
  final ETypeTransaction eTypeTransaction;
  final DateTime dateCre;

  Transaction({
    required this.id,
    required this.value,
    required this.eTypeTransaction,
    required this.dateCre,
  });
}
