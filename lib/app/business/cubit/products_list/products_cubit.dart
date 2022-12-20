import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../date/cubit/date_cubit.dart';
import '../../models/product/product_model.dart';
import '../../repositories/products_repository.dart';

part 'products_cubit.freezed.dart';
part 'products_cubit.g.dart';
part 'products_state.dart';

@injectable
class ProductsCubit extends Cubit<ProductsState> {
  late StreamSubscription _productsSub;
  final ProductsRepository _productsRepository;
  final int businessId;
  final DateCubit _dateCubit;
  ProductsCubit(
    this._productsRepository,
    @factoryParam this.businessId,
    this._dateCubit,
  ) : super(const ProductsState.initial()) {
    state.maybeWhen(orElse: () async {
      List<Product> products = await _productsRepository.get(businessId);
      if (products.isNotEmpty) {
        emit(ProductsState.loaded(products));
      } else {
        emit(const ProductsState.none());
      }
    });

    _productsSub = _productsRepository.watch(businessId).listen((products) async {
      if (products.isNotEmpty) {
        emit(ProductsState.loaded(products));
      } else {
        emit(const ProductsState.none());
      }
    });
  }

  @override
  Future<void> close() {
    _productsSub.cancel();
    return super.close();
  }
}
