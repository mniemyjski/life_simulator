import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../date/models/date_game_model.dart';

part 'house_model.freezed.dart';
part 'house_model.g.dart';

enum ETypeHouse { rent, buy }

@freezed
class House with _$House {
  const factory House({
    required String id,
    required String name,
    required ETypeHouse eTypeHouse,
    required int cost,
    required int monthlyCost,
    DateGame? dateBuy,
    @Default(0) int bonusToRelax,
    @Default(0) int bonusToSleep,
    @Default(0) int bonusToLearn,
  }) = _House;

  factory House.fromJson(Map<String, dynamic> json) => _$HouseFromJson(json);
}
