part of 'products_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ProductsState with _$ProductsState {
  const factory ProductsState.initial() = Initial;
  const factory ProductsState.loading() = Loading;
  const factory ProductsState.none() = None;
  factory ProductsState.loaded(List<Product> products) = Loaded;

  factory ProductsState.fromJson(Map<String, dynamic> json) => _$ProductsStateFromJson(json);
}
