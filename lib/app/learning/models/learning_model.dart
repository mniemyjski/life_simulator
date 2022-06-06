import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:life_simulator/app/skills/models/skills_model.dart';

part 'learning_model.freezed.dart';
part 'learning_model.g.dart';

enum ETypeStatus { base, queue, done }

@freezed
class Learning with _$Learning {
  const factory Learning({
    required String id,
    required String name,
    required List<Skill> skills,
    required int time,
    required double cost,
    @Default(ETypeStatus.base) ETypeStatus status,
  }) = _Learning;

  factory Learning.fromJson(Map<String, dynamic> json) => _$LearningFromJson(json);
}
