import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'contract_model.g.dart';

@CopyWith()
@JsonSerializable()
@Collection(ignore: {'props', 'stringify'})
@Name('Contracts')
class Contract extends Equatable {
  final Id? id;
  final int businessId;
  final int productId;

  final String companyName;

  // better marketing and product rating better amount
  final int amount;

  // better marketing and product rating better pricePerUnit
  final double pricePerUnit;
  final double totalPrice;

  // better marketing and product rating long contract
  final int duration;
  final DateTime dateCre;
  final DateTime? dateEnd;
  final bool isActive;

  // bad marketing and not enough amount product depend on rating, start from 100%
  final double rating;

  const Contract({
    this.id = Isar.autoIncrement,
    required this.businessId,
    required this.productId,
    required this.companyName,
    required this.amount,
    required this.pricePerUnit,
    required this.totalPrice,
    required this.duration,
    required this.dateCre,
    this.dateEnd,
    this.isActive = false,
    this.rating = 1,
  });

  @override
  List<Object?> get props => [
        id,
        businessId,
        productId,
        companyName,
        amount,
        pricePerUnit,
        totalPrice,
        duration,
        dateCre,
        dateEnd,
        isActive,
        rating,
      ];

  factory Contract.fromJson(Map<String, dynamic> json) => _$ContractFromJson(json);
  Map<String, dynamic> toJson() => _$ContractToJson(this);

  double getTotalPrice() {
    return (pricePerUnit * amount);
  }
}
