import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/widgets/widgets.dart';

import '../../constants/locale_keys.g.dart';
import '../../utilities/utilities.dart';
import 'cubit/build/build_asset_cubit.dart';
import 'models/build/build_asset_model.dart';
import 'widgets/asset_build_element.dart';
import 'widgets/asset_builder_sheet.dart';

class BuildAssetsScreen extends StatefulWidget {
  const BuildAssetsScreen({Key? key}) : super(key: key);

  @override
  State<BuildAssetsScreen> createState() => _BuildAssetsScreenState();
}

class _BuildAssetsScreenState extends State<BuildAssetsScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.buildAssets.tr()),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          Expanded(
            child: BlocBuilder<BuildAssetCubit, BuildAssetState>(
              builder: (context, state) {
                return state.maybeWhen(
                    orElse: () => Container(),
                    loaded: (buildAssets, currentDate) {
                      if (buildAssets.isEmpty) {
                        return Center(
                          child: Text(
                            LocaleKeys.queueIsEmpty.tr(),
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        );
                      }

                      return ListView.builder(
                          itemCount: buildAssets.length,
                          itemBuilder: (context, index) {
                            final BuildAsset element = buildAssets[index];
                            return AssetBuildElement(element);
                          });
                    });
              },
            ),
          ),
          const SizedBox(height: 80),
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
            FloatingActionButton(
              heroTag: null,
              onPressed: () async {
                showModalBottomSheet<String>(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(12.0))),
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.5),
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) => const AssetBuilderSheet(),
                );
              },
              child: const FaIcon(FontAwesomeIcons.plus),
            )
          ],
        ),
      ),
    );
  }
}
