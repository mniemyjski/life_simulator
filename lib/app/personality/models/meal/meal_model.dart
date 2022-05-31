import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_model.freezed.dart';
part 'meal_model.g.dart';

@freezed
class Meal with _$Meal {
  const factory Meal({
    required String id,
    required String name,
    required int cost,
    @Default(0) int bonusToRelax,
    @Default(0) int bonusToSleep,
    @Default(0) int bonusToLearn,
  }) = _Meal;

  factory Meal.fromJson(Map<String, dynamic> json) => _$MealFromJson(json);
}
