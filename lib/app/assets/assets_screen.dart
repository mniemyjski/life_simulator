import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/assets/cubit/assets/assets_cubit.dart';
import 'package:life_simulator/app/assets/widgets/assets_menu.dart';
import 'package:life_simulator/app/game/widget/app_bar_stats.dart';
import 'package:life_simulator/config/routes/routes.gr.dart';
import 'package:life_simulator/constants/constants.dart';
import 'package:life_simulator/utilities/utilities.dart';

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
            Expanded(
              child: BlocBuilder<AssetsCubit, AssetsState>(
                builder: (context, state) {
                  return state.maybeWhen(
                      orElse: () => Container(),
                      loaded: (assets) {
                        if (assets.isEmpty) {
                          return Center(
                            child: Text(LocaleKeys.youDontHaveAnyAssets.tr(),
                                style: Theme.of(context).textTheme.bodyText2),
                          );
                        }

                        return ListView.builder(
                            itemCount: assets.length,
                            itemBuilder: (context, index) {
                              return AssetElement(
                                iconButton: IconButton(
                                  onPressed: () =>
                                      context.router.push(AssetRoute(id: assets[index].id)),
                                  icon: const FaIcon(FontAwesomeIcons.pencil),
                                ),
                                asset: assets[index],
                              );
                            });
                      });
                },
              ),
            ),
            const SizedBox(height: 80),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: const AssetsMenu(),
      ),
    );
  }
}