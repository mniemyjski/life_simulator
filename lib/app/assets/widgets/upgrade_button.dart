import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../constants/constants.dart';
import '../../../widgets/widgets.dart';
import '../cubit/assets/assets_cubit.dart';
import '../models/asset/asset_model.dart';

class UpgradeButton extends StatelessWidget {
  final Asset asset;
  const UpgradeButton({Key? key, required this.asset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: CustomButton(
          onPressed: () async {
            showModalBottomSheet<void>(
              context: context,
              backgroundColor: Colors.transparent,
              builder: (BuildContext context) {
                int newLevel = asset.level;
                double cost = 0;

                return StatefulBuilder(builder: (context, setState) {
                  _setState(int value) {
                    if (value >= (asset.level)) {
                      setState(() {
                        newLevel = value;
                        cost = ((newLevel - asset.level) * (asset.baseValue * 0.1)).roundToDouble();
                      });
                    }
                  }

                  return CustomSheetDesign(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '${LocaleKeys.levelCost.tr()}: ${(-cost).toMoney()}',
                            style: TextStyle(
                                color: Theme.of(context).textTheme.bodyText2!.color,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: RatingBar.builder(
                                initialRating: asset.level.toDouble(),
                                minRating: asset.level.toDouble(),
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) => _setState(rating.toInt()),
                              ),
                            ),
                          ),
                          CustomButton(
                              onPressed: () {
                                String? toast = context.read<AssetsCubit>().changeLevel(
                                    asset: asset, level: newLevel - asset.level, cost: -cost);
                                if (toast != null) {
                                  BotToast.showText(text: toast, align: const Alignment(0.1, 0.05));
                                } else {
                                  context.router.pop();
                                }
                              },
                              child: Text(
                                LocaleKeys.confirm.tr(),
                              ))
                        ],
                      ),
                    ),
                  );
                });
              },
            );
          },
          child: Text(LocaleKeys.upgrade.tr())),
    );
  }
}
