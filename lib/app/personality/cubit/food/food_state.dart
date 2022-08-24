part of 'food_cubit.dart';

@freezed
class FoodState with _$FoodState {
  const factory FoodState.initial() = Initial;
  const factory FoodState.loading() = Loading;
  const factory FoodState.loaded({required Food food}) = Loaded;

  factory FoodState.fromJson(Map<String, dynamic> json) => _$FoodStateFromJson(json);
}
