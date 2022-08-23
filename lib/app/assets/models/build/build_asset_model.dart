import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:life_simulator/app/assets/models/asset/asset_model.dart';

part 'build_asset_model.freezed.dart';
part 'build_asset_model.g.dart';

@freezed
class BuildAsset with _$BuildAsset {
  const factory BuildAsset({
    required String id,
    required String address,
    required ETypeAsset eTypeAsset,
    DateTime? datCre,
    DateTime? datEnd,
    required int tenantsMax,
    required double cost,
    required double value,
  }) = _BuildAsset;

  factory BuildAsset.fromJson(Map<String, dynamic> json) => _$BuildAssetFromJson(json);
}
