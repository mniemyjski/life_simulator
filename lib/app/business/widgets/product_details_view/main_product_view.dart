import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/app/business/cubit/product_details/product_details_cubit.dart';
import 'package:richeable/app/business/models/product/product_model.dart';
import 'package:richeable/constants/locale_keys.g.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/custom_alert_dialog.dart';
import 'package:richeable/widgets/custom_button.dart';

class MainProductView extends StatelessWidget {
  final Product product;
  const MainProductView({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'Magazyn',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 18),
                      ),
                      const SizedBox(height: 12),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Text(
                            '${product.amount}',
                            style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 18),
                          ),
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: CircularProgressIndicator(
                              color: Colors.white.withOpacity(0.1),
                              value: 100,
                              strokeWidth: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'Quality',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 18),
                      ),
                      const SizedBox(height: 12),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Text(
                            '${(product.quality * 100).toStringAsFixed(2)}%',
                            style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 18),
                          ),
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: CircularProgressIndicator(
                              color: Colors.white.withOpacity(0.1),
                              value: 100,
                              strokeWidth: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'Marketing',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 18),
                      ),
                      const SizedBox(height: 12),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Text(
                            '${(product.marketing * 100).toStringAsFixed(2)}%',
                            style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 18),
                          ),
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: CircularProgressIndicator(
                              color: Colors.white.withOpacity(0.1),
                              value: 100,
                              strokeWidth: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
            child: CustomButton(
              backgroundColor: Colors.red,
              onPressed: () async {
                final result = await customAlertDialog(
                    context: context,
                    title: LocaleKeys.areYouSure.tr(),
                    desc: LocaleKeys.areYouSure.tr());

                if (result) {
                  context.read<ProductDetailsCubit>().remove();
                  context.router.pop();
                }
              },
              child: Text(LocaleKeys.remove.tr()),
            ),
          ),
        ],
      ),
    );
  }
}
