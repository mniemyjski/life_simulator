part of 'product_details_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState.initial() = Initial;
  const factory ProductDetailsState.loading() = Loading;
  factory ProductDetailsState.loaded({
    required Product product,
    required List<Employee> free,
    required List<Employee> busy,
  }) = Loaded;

  factory ProductDetailsState.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsStateFromJson(json);
}
