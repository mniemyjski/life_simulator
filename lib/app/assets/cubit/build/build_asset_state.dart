part of 'build_asset_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class BuildAssetState with _$BuildAssetState {
  const factory BuildAssetState.initial() = Initial;
  const factory BuildAssetState.loading() = Loading;
  factory BuildAssetState.loaded(List<BuildAsset> buildAssets, DateTime currentDate) = Loaded;

  factory BuildAssetState.fromJson(Map<String, dynamic> json) => _$BuildAssetStateFromJson(json);
}
