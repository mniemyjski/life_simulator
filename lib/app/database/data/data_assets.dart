import 'package:uuid/uuid.dart';

import '../../real_assets/models/asset/asset_model.dart';

class DataAssets {
  static List<Asset> db() {
    var uuid = Uuid();
    return [
      Asset(
        id: uuid.v1(),
        name: 'test',
        description: 'test',
        eTypeAsset: ETypeAsset.apartment,
        tenantsMax: 1,
        tenants: [],
        value: 150000,
        level: 0,
        renovation: 10,
      )
    ];
  }
}
