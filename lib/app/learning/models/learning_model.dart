import 'package:freezed_annotation/freezed_annotation.dart';

import '../../skills/models/skill_model.dart';

part 'learning_model.freezed.dart';
part 'learning_model.g.dart';

@freezed
class Learning with _$Learning {
  const factory Learning({
    @Default('0') String id,
    required String name,
    required ETypeSkills skillType,
    required int baseTime,
    required int exp,
    required int time,
    required double cost,
  }) = _Learning;

  factory Learning.fromJson(Map<String, dynamic> json) => _$LearningFromJson(json);
}
