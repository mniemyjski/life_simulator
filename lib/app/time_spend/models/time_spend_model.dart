import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_spend_model.freezed.dart';
part 'time_spend_model.g.dart';

@freezed
class TimeSpend with _$TimeSpend {
  const factory TimeSpend({
    required int free,
    required int work,
    required int learn,
    required int relax,
    required int sleep,
    required int used,
  }) = _TimeSpend;

  factory TimeSpend.fromJson(Map<String, dynamic> json) => _$TimeSpendFromJson(json);
}
