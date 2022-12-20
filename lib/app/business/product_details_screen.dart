import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/app/business/cubit/product_details/product_details_cubit.dart';
import 'package:richeable/app/business/models/product/product_model.dart';
import 'package:richeable/config/injectable/injection.dart';
import 'package:richeable/constants/locale_keys.g.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../widgets/widgets.dart';
import '../game/widget/app_bar_game.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;
  const ProductDetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ProductDetailsCubit>(param1: product.businessId, param2: product.id),
      child: CustomScaffold(
        appBar: AppBarGame(
          title: product.name,
          showTimeSpend: false,
        ),
        body: BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
          builder: (context, state) {
            return Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CustomCard(
                        child: SizedBox(
                          height: 48,
                          child: Center(
                              child: Text(
                            LocaleKeys.worker.tr(),
                            style: Theme.of(context).textTheme.bodyText2,
                          )),
                        ),
                      ),
                    ),
                    CustomCard(
                      padding: 0,
                      child: SizedBox(
                        width: 56,
                        height: 48,
                        child: Center(
                            child: AutoSizeText(
                          LocaleKeys.amount.tr(),
                          minFontSize: 6,
                          maxLines: 1,
                        )),
                      ),
                    ),
                    const SizedBox(width: 4),
                    CustomCard(
                      padding: 0,
                      child: SizedBox(
                        width: 56,
                        height: 48,
                        child: Center(
                            child: AutoSizeText(
                          LocaleKeys.available.tr(),
                          minFontSize: 6,
                          maxLines: 1,
                        )),
                      ),
                    ),
                    const SizedBox(width: 4),
                    CustomCard(
                      padding: 0,
                      child: SizedBox(
                        width: 102,
                        height: 48,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AutoSizeText(
                              '${LocaleKeys.efficiency.tr()}:',
                              minFontSize: 6,
                              maxLines: 1,
                            ),
                            AutoSizeText(
                              context.watch<ProductDetailsCubit>().efficient(),
                              minFontSize: 6,
                              maxLines: 1,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return _buildElement(index + 1, 0, 0);
                    },
                  ),
                ),
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
      ),
    );
  }

  _buildElement(int lvl, int amount, int available) {
    return Builder(builder: (context) {
      return Row(
        children: [
          Expanded(
            child: CustomCard(
              child: SizedBox(
                height: 48,
                child: Center(
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        child: Icon(
                          FontAwesomeIcons.user,
                          color: Colors.white,
                        ),
                      ),
                      RatingBarIndicator(
                        rating: lvl.toDouble(),
                        itemBuilder: (context, index) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        itemCount: 10,
                        itemSize: 10.0,
                        direction: Axis.horizontal,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          CustomCard(
            padding: 0,
            child: SizedBox(
              width: 56,
              height: 48,
              child:
                  Center(child: Text(context.watch<ProductDetailsCubit>().getWork(lvl).toString())),
            ),
          ),
          const SizedBox(width: 4),
          CustomCard(
            padding: 0,
            child: SizedBox(
              width: 56,
              height: 48,
              child:
                  Center(child: Text(context.watch<ProductDetailsCubit>().getFree(lvl).toString())),
            ),
          ),
          const SizedBox(width: 4),
          CustomButton(
              onPressed: () {
                context.read<ProductDetailsCubit>().assign(lvl);
              },
              child: const Icon(FontAwesomeIcons.plus)),
          const SizedBox(width: 4),
          CustomButton(
              onPressed: () {
                context.read<ProductDetailsCubit>().unAssign(lvl);
              },
              child: const Icon(FontAwesomeIcons.minus)),
        ],
      );
    });
  }
}
