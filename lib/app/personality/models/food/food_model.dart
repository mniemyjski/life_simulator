import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_model.freezed.dart';
part 'food_model.g.dart';

@freezed
class Food with _$Food {
  const factory Food({
    required String id,
    required String name,
    required double cost,
    @Default(0) int bonusToRelax,
    @Default(0) int bonusToSleep,
    @Default(0) int bonusToLearn,
  }) = _Food;

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);
}
