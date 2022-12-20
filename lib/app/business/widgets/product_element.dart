import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:richeable/app/business/models/product/product_model.dart';
import 'package:richeable/config/routes/routes.gr.dart';
import 'package:richeable/constants/constants.dart';
import 'package:richeable/widgets/custom_card.dart';
import 'package:richeable/widgets/custom_text_with_title.dart';

import '../../../utilities/utilities.dart';

class ProductElement extends StatelessWidget {
  final Product product;
  const ProductElement({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(ProductDetailsRoute(product: product));
      },
      child: CustomCard(
        child: Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8, left: 2, right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  RatingBarIndicator(
                    rating: product.rating.toDouble(),
                    itemBuilder: (context, index) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 5,
                    itemSize: 12,
                    direction: Axis.vertical,
                  ),
                  const SizedBox(width: 4),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextWithTitle(
                        title: LocaleKeys.name.tr(),
                        text: product.name,
                      ),
                      CustomTextWithTitle(
                          title: LocaleKeys.type.tr(),
                          text: Enums.toText(
                            product.eTypeProduct,
                          )),
                      CustomTextWithTitle(
                          title: LocaleKeys.quality.tr(),
                          text: Enums.toText(
                            product.eTypeQuality,
                          )),
                      CustomTextWithTitle(
                          title: LocaleKeys.costPerUnit.tr(),
                          text: Enums.toText(
                            product.costPerUnit.toMoney(),
                          )),
                      CustomTextWithTitle(
                          title: LocaleKeys.commissionPerUnit.tr(),
                          text: '${(product.commissionPerUnit * 100).toInt()}%'),
                      CustomTextWithTitle(
                        title: LocaleKeys.unitPerWork.tr(),
                        text: '${product.unitPerWork}',
                      ),
                    ],
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    '${product.marketing.toExp()}',
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 10),
                  ),
                  SizedBox(
                    width: 65,
                    height: 65,
                    child: CircularProgressIndicator(
                      color: Colors.black.withOpacity(0.1),
                      value: 100,
                      strokeWidth: 5,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
