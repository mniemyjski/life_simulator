import 'package:uuid/uuid.dart';

import '../../assets/models/asset/asset_model.dart';

class DataAssets {
  static List<Asset> db() {
    var uuid = const Uuid();
    return [
      Asset(
        id: uuid.v1(),
        address: 'test 1',
        eTypeAsset: ETypeAsset.apartment,
        tenantsMax: 1,
        baseValue: 150000,
        value: 150000,
        level: 0,
        renovation: 80,
      ),
      Asset(
        id: uuid.v1(),
        address: 'test 2',
        eTypeAsset: ETypeAsset.apartment,
        tenantsMax: 1,
        baseValue: 200000,
        value: 200000,
        level: 1,
        renovation: 100,
      ),
    ];
  }
}
