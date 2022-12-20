import 'dart:math';

import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:richeable/utilities/utilities.dart';

import '../product/product_model.dart';

part 'research_model.g.dart';

@CopyWith()
@JsonSerializable()
@Collection(ignore: {'props', 'stringify'})
@Name('Researches')
class Research extends Equatable {
  final Id id;
  @Index()
  final int businessId;
  @Index()
  final DateTime dateEnd;
  final String name;
  final double work;
  final double cost;
  @enumerated
  final ETypeProduct eTypeProduct;
  @enumerated
  final ETypeQuality eTypeQuality;

  const Research({
    this.id = Isar.autoIncrement,
    required this.businessId,
    required this.dateEnd,
    required this.name,
    this.work = 0,
    required this.cost,
    required this.eTypeProduct,
    required this.eTypeQuality,
  });

  @override
  List<Object> get props => [
        id,
        businessId,
        dateEnd,
        name,
        work,
        cost,
        eTypeProduct,
        eTypeQuality,
      ];

  Product toProduct() {
    int generatedRating = _getRating();

    double costPerUnit;
    int unitPerWork;
    double multiplierDemand;

    switch (eTypeProduct) {
      case ETypeProduct.food:
        costPerUnit = 1;
        unitPerWork = 300;
        multiplierDemand = 100;
        break;
      case ETypeProduct.cloth:
        costPerUnit = 10;
        unitPerWork = 1;
        multiplierDemand = 1;
        break;
      case ETypeProduct.furniture:
        costPerUnit = 100;
        unitPerWork = 1;
        multiplierDemand = 1;
        break;
      case ETypeProduct.jewelery:
        costPerUnit = 300;
        unitPerWork = 1;
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
      commissionPerUnit: 0.5,
      unitPerWork: unitPerWork,
      name: name,
      businessId: businessId,
      eTypeProduct: eTypeProduct,
      eTypeQuality: eTypeQuality,
      rating: generatedRating,
      marketing: 0,
      amount: 0,
    );
  }

  int _getRating() {
    return Random().nextIntInRange(1, 5);
  }

  factory Research.fromJson(Map<String, dynamic> json) => _$ResearchFromJson(json);
  Map<String, dynamic> toJson() => _$ResearchToJson(this);
}
