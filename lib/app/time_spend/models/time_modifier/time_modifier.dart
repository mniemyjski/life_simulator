import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_modifier.freezed.dart';
part 'time_modifier.g.dart';

enum ETypeModifier { free, work, commuting, learn, relax, sleep }

enum ETypeModifierSource { job, freelance, transport, meal, house }

@freezed
class TimeModifier with _$TimeModifier {
  const factory TimeModifier({
    required String id,
    required ETypeModifier eTypeModifier,
    required ETypeModifierSource eTypeModifierSource,
    required int value,
  }) = _TimeModifier;

  factory TimeModifier.fromJson(Map<String, dynamic> json) => _$TimeModifierFromJson(json);
}
