import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../constants/constants.dart';
import '../../../widgets/widgets.dart';
import '../cubit/assets/assets_cubit.dart';
import '../models/asset/asset_model.dart';

class RenovationButton extends StatelessWidget {
  final Asset asset;
  const RenovationButton({Key? key, required this.asset}) : super(key: key);

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
                double newRenovation = asset.renovation;
                double cost = 0;

                return StatefulBuilder(builder: (context, setState) {
                  _setState(double value) {
                    if (value >= (asset.renovation)) {
                      setState(() {
                        newRenovation = value;
                        cost = ((newRenovation - asset.renovation) * (asset.value * 0.002))
                            .roundToDouble();
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
                            '${LocaleKeys.renovationCost.tr()}: ${-cost.toInt()}\$',
                            style: TextStyle(
                                color: Theme.of(context).textTheme.bodyText2!.color,
                                fontWeight: FontWeight.bold),
                          ),
                          Slider(
                            value: newRenovation,
                            min: 0,
                            max: 100,
                            divisions: 100,
                            label: '${(newRenovation).toMoney()}%',
                            onChanged: (double value) => _setState(value),
                          ),
                          CustomButton(
                              onPressed: () {
                                final toast = context.read<AssetsCubit>().changeRenovation(
                                    asset: asset,
                                    renovation: newRenovation - asset.renovation,
                                    cost: -cost);

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
          child: Text(LocaleKeys.renovation.tr())),
    );
  }
}
