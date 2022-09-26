part of 'buy_asset_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class BuyAssetState with _$BuyAssetState {
  const factory BuyAssetState.initial() = Initial;
  const factory BuyAssetState.loading() = Loading;
  factory BuyAssetState.loaded(List<Asset> assets) = Loaded;

  factory BuyAssetState.fromJson(Map<String, dynamic> json) => _$BuyAssetStateFromJson(json);
}
