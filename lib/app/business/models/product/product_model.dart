import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

enum ETypeProduct { food, cloth, furniture, jewelery }

enum ETypeQuality { low, mid, high }

@JsonSerializable()
@Collection(ignore: {'props', 'stringify'})
@Name('Products')
class Product extends Equatable {
  final Id id;
  final int businessId;
  final String name;

  final int rating;

  final double dailyDemand;
  final double multiplierDemand;

  final double costPerUnit;
  final double commissionPerUnit;
  final double workPerUnit;
  @enumerated
  final ETypeProduct eTypeProduct;
  @enumerated
  final ETypeQuality eTypeQuality;

  const Product({
    this.id = Isar.autoIncrement,
    required this.costPerUnit,
    required this.commissionPerUnit,
    required this.name,
    required this.businessId,
    required this.workPerUnit,
    required this.eTypeProduct,
    required this.eTypeQuality,
    required this.rating,
    required this.dailyDemand,
    required this.multiplierDemand,
  });

  @override
  List<Object?> get props => [
        id,
        businessId,
      ];

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
