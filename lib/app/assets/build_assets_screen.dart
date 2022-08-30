import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/assets/cubit/build/build_asset_cubit.dart';
import 'package:life_simulator/app/assets/models/build/build_asset_model.dart';
import 'package:life_simulator/app/assets/widgets/asset_builder.dart';

import '../../constants/locale_keys.g.dart';
import '../../utilities/utilities.dart';
import 'widgets/asset_build_element.dart';

class BuildAssetsScreen extends StatefulWidget {
  const BuildAssetsScreen({Key? key}) : super(key: key);

  @override
  State<BuildAssetsScreen> createState() => _BuildAssetsScreenState();
}

class _BuildAssetsScreenState extends State<BuildAssetsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Expanded(
              child: BlocBuilder<BuildAssetCubit, BuildAssetState>(
                builder: (context, state) {
                  return state.maybeWhen(
                      orElse: () => Container(),
                      loaded: (buildAssets) {
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
        floatingActionButton: FloatingActionButton(
          heroTag: null,
          onPressed: () async {
            showModalBottomSheet<String>(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(8.0))),
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return const AssetBuilder();
              },
            );
          },
          child: const FaIcon(FontAwesomeIcons.plus),
        ),
      ),
    );
  }
}
