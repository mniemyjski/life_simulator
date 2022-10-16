import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../models/product/product_model.dart';

part 'products_cubit.freezed.dart';
part 'products_cubit.g.dart';
part 'products_state.dart';

@lazySingleton
class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(const ProductsState.initial());
}
