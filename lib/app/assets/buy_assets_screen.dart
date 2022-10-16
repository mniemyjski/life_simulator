import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/constants/constants.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/widgets.dart';

import 'cubit/assets/assets_cubit.dart';
import 'cubit/buy/buy_asset_cubit.dart';
import 'models/asset/asset_model.dart';
import 'widgets/asset_element.dart';

class BuyAssetsScreen extends StatelessWidget {
  const BuyAssetsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.buyAssets.tr()),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          const SizedBox(height: 8),
          BlocBuilder<BuyAssetCubit, BuyAssetState>(
            builder: (context, state) {
              return state.maybeWhen(
                  orElse: () => Container(),
                  loaded: (assets) {
                    return Expanded(
                      child: ListView.builder(
                          itemCount: assets.length,
                          itemBuilder: (context, index) {
                            final Asset element = assets[index];

                            return AssetElement(
                              asset: element,
                              iconButton: IconButton(
                                onPressed: () {
                                  String? toast = context.read<AssetsCubit>().buy(element);
                                  if (toast != null) {
                                    BotToast.showText(
                                        text: toast, align: const Alignment(0.1, 0.05));
                                  } else {
                                    context.router.pop();
                                  }
                                },
                                icon: const FaIcon(
                                  FontAwesomeIcons.basketShopping,
                                  color: Colors.white,
                                ),
                              ),
                            );
                          }),
                    );
                  });
            },
          ),
        ],
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
            const SizedBox(width: 56),
            const SizedBox(width: 56),
          ],
        ),
      ),
    );
  }
}
