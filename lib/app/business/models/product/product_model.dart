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

  final int unitPerWork;
  final double costPerUnit;
  final double commissionPerUnit;
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
    required this.unitPerWork,
    required this.eTypeProduct,
    required this.eTypeQuality,
    required this.rating,
    required this.marketing,
    required this.amount,
  });

  @override
  List<Object?> get props => [
        id,
        businessId,
      ];

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
