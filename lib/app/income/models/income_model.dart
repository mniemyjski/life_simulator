import 'package:freezed_annotation/freezed_annotation.dart';

part 'income_model.freezed.dart';
part 'income_model.g.dart';

enum ETypeSource { job, meal, house, car }

enum ETypeIncome { revenue, expense }

@freezed
class Income with _$Income {
  const factory Income({
    required String id,
    required ETypeSource source,
    required ETypeIncome typeIncome,
    required double value,
    required int interval,
    required int timeLeft,
  }) = _Income;

  factory Income.fromJson(Map<String, dynamic> json) => _$IncomeFromJson(json);
}
