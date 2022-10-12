import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/widgets.dart';

import '../../config/routes/routes.gr.dart';
import '../../constants/constants.dart';
import '../game/widget/app_bar_game.dart';
import 'cubit/assets/assets_cubit.dart';
import 'widgets/asset_element.dart';
import 'widgets/assets_menu.dart';

class AssetsScreen extends StatelessWidget {
  const AssetsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBarGame(title: LocaleKeys.assets.tr()),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<AssetsCubit, AssetsState>(
              builder: (context, state) {
                return state.maybeWhen(
                    orElse: () => Container(),
                    loaded: (assets, currentDate) {
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
    );
  }
}
