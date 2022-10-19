import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../constants/constants.dart';
import '../../../widgets/widgets.dart';
import '../cubit/assets/assets_cubit.dart';
import '../models/asset/asset_model.dart';

class RentButton extends StatelessWidget {
  final Asset asset;
  const RentButton({Key? key, required this.asset}) : super(key: key);

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
                double newRent = asset.minRent;

                return StatefulBuilder(builder: (context, setState) {
                  return CustomSheetDesign(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '${LocaleKeys.rent.tr()}:',
                            style: TextStyle(
                                color: Theme.of(context).textTheme.bodyText2!.color,
                                fontWeight: FontWeight.bold),
                          ),
                          Slider(
                            value: newRent,
                            min: 0,
                            max: 2000,
                            divisions: 100,
                            label: '${(newRent).toMoney()}',
                            onChanged: (double value) => setState(() => newRent = value),
                          ),
                          CustomButton(
                              onPressed: () {
                                context.read<AssetsCubit>().changeRent(
                                      asset: asset,
                                      rent: newRent,
                                    );

                                context.router.pop();
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
          child: Text(LocaleKeys.rent.tr())),
    );
  }
}
