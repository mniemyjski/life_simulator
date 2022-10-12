import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

part 'product_model.g.dart';

@Collection(ignore: {'props', 'stringify'})
@Name('Employees')
class Product extends Equatable {
  final Id id;
  final int businessId;

  const Product({this.id = Isar.autoIncrement, required this.businessId});

  @override
  List<Object?> get props => [id, businessId];

  Product copyWith({
    Id? id,
    int? businessId,
  }) {
    return Product(
      id: id ?? this.id,
      businessId: businessId ?? this.businessId,
    );
  }
}
