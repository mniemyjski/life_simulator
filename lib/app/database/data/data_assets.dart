import '../../assets/models/asset/asset_model.dart';

class DataAssets {
  static List<Asset> db() {
    return [
      Asset.builder(
        address: 'Street 1',
        eTypeAsset: ETypeAsset.apartment,
        tenantsMax: 1,
        baseValue: 150000,
        level: 0,
      ),
      Asset.builder(
        address: 'Street 2',
        eTypeAsset: ETypeAsset.apartment,
        tenantsMax: 1,
        baseValue: 150000,
        level: 0,
      ),
      Asset.builder(
        address: 'Street 3',
        eTypeAsset: ETypeAsset.apartment,
        tenantsMax: 1,
        baseValue: 150000,
        level: 0,
      ),
      Asset.builder(
        address: 'Street 4',
        eTypeAsset: ETypeAsset.apartment,
        tenantsMax: 1,
        baseValue: 200000,
        level: 1,
      ),
      Asset.builder(
        address: 'Street 5',
        eTypeAsset: ETypeAsset.apartment,
        tenantsMax: 1,
        baseValue: 200000,
        level: 1,
      ),
      Asset.builder(
        address: 'Street 6',
        eTypeAsset: ETypeAsset.apartment,
        tenantsMax: 1,
        baseValue: 200000,
        level: 1,
      ),
      Asset.builder(
        address: 'Street 7',
        eTypeAsset: ETypeAsset.apartment,
        tenantsMax: 1,
        baseValue: 200000,
        level: 1,
      ),
    ];
  }
}
