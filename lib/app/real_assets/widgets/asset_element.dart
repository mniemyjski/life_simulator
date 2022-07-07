import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:life_simulator/app/real_assets/cubit/tenant/tenants_cubit.dart';
import 'package:life_simulator/utilities/utilities.dart';

import '../../../constants/constants.dart';
import '../models/asset/asset_model.dart';

class AssetElement extends StatelessWidget {
  final Asset asset;
  final IconButton? iconButton;

  const AssetElement({
    Key? key,
    required this.asset,
    this.iconButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: RatingBarIndicator(
                  rating: asset.level.toDouble(),
                  itemBuilder: (context, index) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 5,
                  itemSize: 15.0,
                  direction: Axis.vertical,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyText1,
                      children: <TextSpan>[
                        TextSpan(
                          text: '${LocaleKeys.address.tr()}: ',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: asset.address,
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyText1,
                      children: <TextSpan>[
                        TextSpan(
                          text: '${LocaleKeys.type.tr()}: ',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: Enums.toText(asset.eTypeAsset).tr(),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyText1,
                      children: <TextSpan>[
                        TextSpan(
                          text: '${LocaleKeys.value.tr()}: ',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: asset.value.round().toString(),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyText1,
                      children: <TextSpan>[
                        TextSpan(
                          text: '${LocaleKeys.tenants.tr()}: ',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              '${context.watch<TenantsCubit>().getTenantInAsset(asset).length.toString()}/${asset.tenantsMax.toString()}',
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyText1,
                      children: <TextSpan>[
                        TextSpan(
                          text: '${LocaleKeys.renovation.tr()}: ',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: '${(asset.renovation).round().toString()}%',
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyText1,
                      children: <TextSpan>[
                        TextSpan(
                          text: '${LocaleKeys.rent.tr()}: ',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              '${context.watch<TenantsCubit>().getTotalRentInAsset(asset).toMoney()}',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          iconButton ?? const SizedBox(),
        ],
      ),
    ));
  }
}
