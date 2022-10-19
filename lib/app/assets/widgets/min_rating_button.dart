import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../constants/constants.dart';
import '../../../widgets/widgets.dart';
import '../cubit/assets/assets_cubit.dart';
import '../models/asset/asset_model.dart';

class MinRatingButton extends StatelessWidget {
  final Asset asset;
  const MinRatingButton({Key? key, required this.asset}) : super(key: key);

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
                int newMinRating = asset.minRating;

                return StatefulBuilder(builder: (context, setState) {
                  return CustomSheetDesign(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '${LocaleKeys.minRating.tr()}:',
                            style: TextStyle(
                                color: Theme.of(context).textTheme.bodyText2!.color,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: RatingBar.builder(
                                initialRating: asset.minRating.toDouble(),
                                minRating: 1,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) =>
                                    setState(() => newMinRating = rating.toInt()),
                              ),
                            ),
                          ),
                          CustomButton(
                              onPressed: () {
                                context.read<AssetsCubit>().changeMinRating(
                                      asset: asset,
                                      minRating: newMinRating,
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
          child: Text(LocaleKeys.minRating.tr())),
    );
  }
}
