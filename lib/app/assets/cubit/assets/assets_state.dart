part of 'assets_cubit.dart';

@freezed
class AssetsState with _$AssetsState {
  const factory AssetsState.initial() = Initial;
  const factory AssetsState.loading() = Loading;
  const factory AssetsState.loaded(List<Asset> assets, DateTime currentDate) = Loaded;

  factory AssetsState.fromJson(Map<String, dynamic> json) => _$AssetsStateFromJson(json);
}
