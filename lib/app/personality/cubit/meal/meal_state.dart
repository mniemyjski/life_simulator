part of 'meal_cubit.dart';

@freezed
class MealState with _$MealState {
  const factory MealState.initial() = Initial;
  const factory MealState.loading() = Loading;
  const factory MealState.loaded({required Meal meal}) = Loaded;

  factory MealState.fromJson(Map<String, dynamic> json) => _$MealStateFromJson(json);
}
