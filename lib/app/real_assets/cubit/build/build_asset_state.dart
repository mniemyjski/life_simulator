part of 'build_asset_cubit.dart';

@freezed
class BuildAssetState with _$BuildAssetState {
  const factory BuildAssetState.initial() = Initial;
  const factory BuildAssetState.loading() = Loading;
  const factory BuildAssetState.loaded(List<BuildAsset> buildAssets) = Loaded;

  factory BuildAssetState.fromJson(Map<String, dynamic> json) => _$BuildAssetStateFromJson(json);
}
