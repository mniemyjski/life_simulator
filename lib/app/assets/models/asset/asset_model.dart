import 'package:freezed_annotation/freezed_annotation.dart';

part 'asset_model.freezed.dart';
part 'asset_model.g.dart';

enum ETypeAsset {
  apartment,
  house,
  tenement,
  estate,
}

@freezed
class Asset with _$Asset {
  // const Asset._();

  @Assert('minRating > 0', 'minRating <= 5')
  const factory Asset({
    required String id,
    required String address,
    required ETypeAsset eTypeAsset,
    required int tenantsMax,
    // required List<Tenant> tenants,
    required double baseValue,
    required double value,
    required int level,
    required double renovation,
    @Default(800) double minRent,
    @Default(true) bool friendlyAnimal,
    @Default(1) int minRating,
  }) = _Asset;

  factory Asset.fromJson(Map<String, dynamic> json) => _$AssetFromJson(json);

  // double getRent() {
  //   double rent = 0;
  //   for (var element in tenants) {
  //     rent += element.rent;
  //   }
  //   return rent;
  // }
}
