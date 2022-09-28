import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:uuid/uuid.dart';

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
  const Asset._();

  @Assert('minRating > 0', 'minRating <= 5')
  @Assert('baseValue > 0')
  @Assert('monthlyCost < 0')
  const factory Asset({
    required String id,
    required String address,
    required ETypeAsset eTypeAsset,
    required int tenantsMax,
    required double baseValue,
    required double value,
    required int level,
    required double renovation,
    required double monthlyCost,
    @Default(800) double minRent,
    @Default(true) bool friendlyAnimal,
    @Default(1) int minRating,
  }) = _Asset;

  factory Asset.fromJson(Map<String, dynamic> json) => _$AssetFromJson(json);

  static Asset builder({
    required String address,
    required ETypeAsset eTypeAsset,
    required int tenantsMax,
    required double baseValue,
    int level = 0,
    double? renovation,
    double minRent = 800,
    bool friendlyAnimal = true,
    int minRating = 1,
  }) {
    var uuid = const Uuid();
    var rng = Random();

    double r = renovation ?? rng.nextIntInRange(60, 100).toDouble();

    return Asset(
        id: uuid.v1(),
        address: address,
        eTypeAsset: eTypeAsset,
        tenantsMax: tenantsMax,
        baseValue: baseValue,
        value: baseValue * (r / 100),
        level: level,
        renovation: r,
        minRent: minRent,
        friendlyAnimal: friendlyAnimal,
        minRating: minRating,
        monthlyCost: (-200 * tenantsMax).toDouble());
  }
}
