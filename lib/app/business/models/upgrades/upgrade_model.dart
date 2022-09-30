import 'package:freezed_annotation/freezed_annotation.dart';

part 'upgrade_model.freezed.dart';
part 'upgrade_model.g.dart';

@freezed
class Upgrade with _$Upgrade {
  const factory Upgrade({
    required String id,
    @Default(1) int maxEmployees,
    @Default(1) int maxScientist,
    @Default(1) int efficiencyEmployees,
    @Default(1) int efficiencyScientist,
    @Default(false) bool accountant,
    @Default(false) bool analyst,
    @Default(false) bool manager,
    @Default(false) bool marketer,
  }) = _Upgrade;

  factory Upgrade.fromJson(Map<String, dynamic> json) => _$UpgradeFromJson(json);
}
