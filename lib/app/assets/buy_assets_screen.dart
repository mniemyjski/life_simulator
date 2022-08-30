import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/assets/cubit/buy/buy_asset_cubit.dart';
import 'package:life_simulator/app/assets/widgets/asset_element.dart';

import 'cubit/assets/assets_cubit.dart';
import 'models/asset/asset_model.dart';

class BuyAssetsScreen extends StatelessWidget {
  const BuyAssetsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
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
                                    context.read<AssetsCubit>().buy(element);
                                    context.router.pop();
                                  },
                                  icon: const FaIcon(FontAwesomeIcons.basketShopping),
                                ),
                              );
                            }),
                      );
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}
