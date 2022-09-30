// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upgrade_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Upgrade _$$_UpgradeFromJson(Map<String, dynamic> json) => _$_Upgrade(
      id: json['id'] as String,
      maxEmployees: json['maxEmployees'] as int? ?? 1,
      maxScientist: json['maxScientist'] as int? ?? 1,
      efficiencyEmployees: json['efficiencyEmployees'] as int? ?? 1,
      efficiencyScientist: json['efficiencyScientist'] as int? ?? 1,
      accountant: json['accountant'] as bool? ?? false,
      analyst: json['analyst'] as bool? ?? false,
      manager: json['manager'] as bool? ?? false,
      marketer: json['marketer'] as bool? ?? false,
    );

Map<String, dynamic> _$$_UpgradeToJson(_$_Upgrade instance) =>
    <String, dynamic>{
      'id': instance.id,
      'maxEmployees': instance.maxEmployees,
      'maxScientist': instance.maxScientist,
      'efficiencyEmployees': instance.efficiencyEmployees,
      'efficiencyScientist': instance.efficiencyScientist,
      'accountant': instance.accountant,
      'analyst': instance.analyst,
      'manager': instance.manager,
      'marketer': instance.marketer,
    };
