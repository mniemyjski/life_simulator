import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/app/business/cubit/product_details/product_details_cubit.dart';
import 'package:richeable/app/business/widgets/product_details_view/contracts_view.dart';
import 'package:richeable/app/business/widgets/product_details_view/main_product_view.dart';
import 'package:richeable/app/business/widgets/product_details_view/marketing_view.dart';
import 'package:richeable/app/business/widgets/product_details_view/production_view.dart';
import 'package:richeable/app/business/widgets/product_details_view/qulity_view.dart';
import 'package:richeable/config/injectable/injection.dart';

import '../../widgets/widgets.dart';
import '../game/widget/app_bar_game.dart';

class ProductDetailsScreen extends StatefulWidget {
  final int productId;
  final int businessId;
  const ProductDetailsScreen({Key? key, required this.productId, required this.businessId})
      : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  final List<bool> _selected = <bool>[
    true,
    false,
    false,
    false,
    false,
  ];

  _changeMarket(int index) {
    setState(() {
      for (int i = 0; i < _selected.length; i++) {
        _selected[i] = i == index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<ProductDetailsCubit>(param1: widget.businessId, param2: widget.productId),
      child: BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
        builder: (context, state) {
          return state.maybeWhen(
              orElse: () => Container(),
              loaded: (product, free, busy) {
                return CustomScaffold(
                  appBar: AppBarGame(
                    title: product.name,
                    showTimeSpend: false,
                  ),
                  body: BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
                    builder: (context, state) {
                      return Column(
                        children: [
                          ToggleButtons(
                            onPressed: (int index) => _changeMarket(index),
                            borderRadius: const BorderRadius.all(Radius.circular(0)),
                            selectedBorderColor: Colors.white70,
                            selectedColor: Colors.white,
                            fillColor: Theme.of(context).scaffoldBackgroundColor,
                            color: Colors.white70,
                            constraints: BoxConstraints(
                                minWidth: (MediaQuery.of(context).size.width - 6) / 5,
                                minHeight: 56),
                            isSelected: _selected,
                            children: const [
                              Text('Main'),
                              Text('Production'),
                              Text('Quality'),
                              Text('Marketing'),
                              Text('Contracts'),
                            ],
                          ),
                          if (_selected[0]) MainProductView(product: product),
                          if (_selected[1]) const ProductionView(),
                          if (_selected[2]) const QualityView(),
                          if (_selected[3]) const MarketingView(),
                          if (_selected[4]) const ContractsView(),
                          const SizedBox(height: 80),
                        ],
                      );
                    },
                  ),
                  floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
                  floatingActionButton: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FloatingActionButton(
                          heroTag: null,
                          onPressed: () => context.router.pop(),
                          child: const FaIcon(FontAwesomeIcons.arrowRotateLeft),
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
