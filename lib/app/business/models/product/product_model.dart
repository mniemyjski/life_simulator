import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

enum ETypeProduct { food, cloth, furniture, jewelery }

enum ETypeQuality { low, mid, high }

@CopyWith()
@JsonSerializable()
@Collection(ignore: {'props', 'stringify'})
@Name('Products')
class Product extends Equatable {
  final Id id;
  @Index()
  final int businessId;
  final String name;

  final int rating;
  final double marketing;
  final int amount;

  final double quality;
  final double monthlyMarketingCost;

  final int unitPerWork;
  final double costPerUnit;
  @enumerated
  final ETypeProduct eTypeProduct;

  const Product({
    this.id = Isar.autoIncrement,
    required this.costPerUnit,
    required this.name,
    required this.businessId,
    required this.unitPerWork,
    required this.eTypeProduct,
    required this.rating,
    this.marketing = 0,
    this.amount = 0,
    this.quality = 1,
    this.monthlyMarketingCost = 0,
  });

  @override
  List<Object?> get props => [
        id,
        businessId,
        costPerUnit,
        name,
        unitPerWork,
        eTypeProduct,
        rating,
        marketing,
        amount,
        quality,
        monthlyMarketingCost,
      ];

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
