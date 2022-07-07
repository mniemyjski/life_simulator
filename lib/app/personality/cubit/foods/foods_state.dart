part of 'foods_cubit.dart';

@freezed
class FoodsState with _$FoodsState {
  const factory FoodsState.initial() = Initial;
  const factory FoodsState.loading() = Loading;
  const factory FoodsState.loaded({required Food food}) = Loaded;

  factory FoodsState.fromJson(Map<String, dynamic> json) => _$FoodsStateFromJson(json);
}
