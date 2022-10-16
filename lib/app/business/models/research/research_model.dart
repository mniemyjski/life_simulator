import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:uuid/uuid.dart';

import '../product/product_model.dart';

part 'research_model.freezed.dart';
part 'research_model.g.dart';

@freezed
class Research with _$Research {
  const Research._();

  const factory Research({
    required String uid,
    required int businessId,
    required DateTime dateEnd,
    required String name,
    @Default(0) double work,
    required double cost,
    required ETypeProduct eTypeProduct,
    required ETypeQuality eTypeQuality,
  }) = _Research;

  static Research builder({
    required int businessId,
    required String name,
    required DateTime dateEnd,
    required double cost,
    required ETypeProduct eTypeProduct,
    required ETypeQuality eTypeQuality,
  }) {
    return Research(
      uid: const Uuid().v1(),
      businessId: businessId,
      name: name,
      dateEnd: dateEnd,
      cost: cost,
      eTypeProduct: eTypeProduct,
      eTypeQuality: eTypeQuality,
    );
  }

  Product toProduct() {
    int generatedRating = _getRating();

    double costPerUnit;
    double workPerUnit;
    double multiplierDemand;

    switch (eTypeProduct) {
      case ETypeProduct.food:
        costPerUnit = 1;
        workPerUnit = 1 / 100;
        multiplierDemand = 100;
        break;
      case ETypeProduct.cloth:
        costPerUnit = 10;
        workPerUnit = 1;
        multiplierDemand = 1;
        break;
      case ETypeProduct.furniture:
        costPerUnit = 100;
        workPerUnit = 1;
        multiplierDemand = 1;
        break;
      case ETypeProduct.jewelery:
        costPerUnit = 300;
        workPerUnit = 1;
        multiplierDemand = 1;
        break;
    }
    switch (eTypeQuality) {
      case ETypeQuality.low:
        costPerUnit = costPerUnit * 0.5;
        multiplierDemand = multiplierDemand * 2;
        break;
      case ETypeQuality.mid:
        costPerUnit = costPerUnit * 1;
        multiplierDemand = multiplierDemand * 1;
        break;
      case ETypeQuality.high:
        costPerUnit = costPerUnit * 2;
        multiplierDemand = multiplierDemand * 0.5;
        break;
    }

    return Product(
      costPerUnit: costPerUnit,
      commissionPerUnit: 0.05,
      workPerUnit: workPerUnit,
      name: name,
      businessId: businessId,
      eTypeProduct: eTypeProduct,
      eTypeQuality: eTypeQuality,
      rating: generatedRating,
      dailyDemand: 0,
      multiplierDemand: multiplierDemand,
    );
  }

  int _getRating() {
    //max work is 50 * 1.2 * 360 = 21600
    //min work is 1 * 0,4 * 360 = 144

    return Random().nextIntInRange(1, 5);
  }

  factory Research.fromJson(Map<String, dynamic> json) => _$ResearchFromJson(json);
}
