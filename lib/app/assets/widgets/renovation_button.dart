import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_simulator/app/assets/cubit/assets/assets_cubit.dart';
import 'package:life_simulator/utilities/utilities.dart';

import '../../../constants/constants.dart';
import '../../../widgets/widgets.dart';
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
              builder: (BuildContext context) {
                double newRenovation = asset.renovation;
                double cost = 0;

                return StatefulBuilder(builder: (context, setState) {
                  _setState(double value) {
                    if (value >= (asset.renovation)) {
                      setState(() {
                        newRenovation = value;
                        cost = ((newRenovation - asset.renovation) * (asset.baseValue * 0.002))
                            .roundToDouble();
                      });
                    }
                  }

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '${LocaleKeys.renovationCost.tr()}: ${-cost.toInt()}\$',
                          style: TextStyle(
                              color: Theme.of(context).textTheme.bodyText1!.color,
                              fontWeight: FontWeight.bold),
                        ),
                        Slider(
                          value: newRenovation,
                          min: 0,
                          max: 100,
                          divisions: 100,
                          label: '${(newRenovation).toInt().toString()}%',
                          onChanged: (double value) => _setState(value),
                        ),
                        CustomButton(
                            onPressed: () {
                              context.read<AssetsCubit>().changeRenovation(
                                  asset: asset,
                                  renovation: newRenovation - asset.renovation,
                                  cost: -cost);

                              context.router.pop();
                            },
                            child: Text(
                              LocaleKeys.confirm.tr(),
                            ))
                      ],
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
