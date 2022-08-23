part of 'buy_asset_cubit.dart';

@freezed
class BuyAssetState with _$BuyAssetState {
  const factory BuyAssetState.initial() = Initial;
  const factory BuyAssetState.loading() = Loading;
  const factory BuyAssetState.loaded(List<Asset> assets) = Loaded;

  factory BuyAssetState.fromJson(Map<String, dynamic> json) => _$BuyAssetStateFromJson(json);
}
