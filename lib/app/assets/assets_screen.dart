import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/assets/cubit/assets/assets_cubit.dart';
import 'package:life_simulator/app/game/widget/app_bar_stats.dart';
import 'package:life_simulator/config/routes/routes.gr.dart';
import 'package:life_simulator/constants/constants.dart';
import 'package:life_simulator/widgets/widgets.dart';

import '../date/widgets/next_day.dart';
import 'models/asset/asset_model.dart';
import 'widgets/asset_element.dart';

class AssetsScreen extends StatelessWidget {
  const AssetsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const AppBarStats(),
            CustomButton(
              padding: const EdgeInsets.all(4),
              onPressed: () => context.router.push(const BuyAssetsRoute()),
              child: Text(LocaleKeys.buy.tr()),
            ),
            CustomButton(
              padding: const EdgeInsets.all(4),
              onPressed: () => context.router.push(const BuildAssetsRoute()),
              child: Text(LocaleKeys.build.tr()),
            ),
            Expanded(
              child: BlocBuilder<AssetsCubit, AssetsState>(
                builder: (context, state) {
                  return state.maybeWhen(
                      orElse: () => Container(),
                      loaded: (assets) {
                        return ListView.builder(
                            itemCount: assets.length,
                            itemBuilder: (context, index) {
                              final Asset element = assets[index];
                              return AssetElement(
                                iconButton: IconButton(
                                  onPressed: () => context.router.push(AssetRoute(id: element.id)),
                                  icon: const FaIcon(FontAwesomeIcons.pencil),
                                ),
                                asset: element,
                              );
                            });
                      });
                },
              ),
            ),
            SizedBox(height: 80),
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
              const NextDayButton(),
            ],
          ),
        ),
      ),
    );
  }
}
