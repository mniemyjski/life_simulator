import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:richeable/app/money/models/transaction/transaction_model.dart';

part 'income_model.g.dart';

enum ETypeIncome {
  revenue,
  expense,
}

enum ETypeFrequency {
  annually,
  monthly,
  weekly,
  daily,
}

@CopyWith()
@JsonSerializable()
@Collection(ignore: {'props', 'stringify'})
@Name('Incomes')
class Income extends Equatable {
  final Id id;
  final String uid;
  @enumerated
  final ETypeTransactionSource source;
  @enumerated
  final ETypeIncome typeIncome;
  @enumerated
  final ETypeFrequency eTypeFrequency;
  final double value;
  final DateTime? next;

  const Income({
    required this.uid,
    required this.source,
    required this.typeIncome,
    required this.eTypeFrequency,
    required this.value,
    this.next,
  }) : id = Isar.autoIncrement;

  @override
  List<Object?> get props => [
        uid,
        source,
        typeIncome,
        eTypeFrequency,
        value,
        next,
      ];

  factory Income.fromJson(Map<String, dynamic> json) => _$IncomeFromJson(json);
  Map<String, dynamic> toJson() => _$IncomeToJson(this);

  double monthlyIncome() {
    switch (eTypeFrequency) {
      case ETypeFrequency.annually:
        return value / 12;

      case ETypeFrequency.monthly:
        return value;

      case ETypeFrequency.weekly:
        return value * 4;

      case ETypeFrequency.daily:
        return value * 30;
    }
  }
}
