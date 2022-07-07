import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/date/widgets/next_day.dart';
import 'package:life_simulator/app/real_assets/cubit/assets/assets_cubit.dart';
import 'package:life_simulator/app/real_assets/cubit/tenant/tenants_cubit.dart';
import 'package:life_simulator/app/real_assets/widgets/asset_element.dart';
import 'package:life_simulator/app/real_assets/widgets/min_rating_button.dart';
import 'package:life_simulator/app/real_assets/widgets/renovation_button.dart';
import 'package:life_simulator/app/real_assets/widgets/rent_button.dart';
import 'package:life_simulator/app/real_assets/widgets/upgrade_button.dart';
import 'package:life_simulator/utilities/utilities.dart';
import 'package:life_simulator/widgets/widgets.dart';

import '../../constants/locale_keys.g.dart';
import '../game/widget/app_bar_stats.dart';
import 'models/asset/asset_model.dart';
import 'models/tenant/tenant_model.dart';

class AssetScreen extends StatelessWidget {
  final String id;
  const AssetScreen({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Column buildBody(Asset asset) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppBarStats(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: AssetElement(asset: asset)),
              Expanded(
                  child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                                    text: '${asset.minRent.toInt().toString()}\$',
                                  ),
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                style: Theme.of(context).textTheme.bodyText1,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '${LocaleKeys.minRating.tr()}: ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: asset.minRating.toString(),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Switch(
                        value: asset.friendlyAnimal,
                        onChanged: (state) => context
                            .read<AssetsCubit>()
                            .changeFriendlyAnimal(asset: asset, friendlyAnimal: state),
                      ),
                      Text(
                        LocaleKeys.friendlyAnimal.tr(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              )),
            ],
          ),
          Row(
            children: [
              Expanded(child: RenovationButton(asset: asset)),
              Expanded(child: UpgradeButton(asset: asset)),
            ],
          ),
          Row(
            children: [
              Expanded(child: RentButton(asset: asset)),
              Expanded(child: MinRatingButton(asset: asset)),
            ],
          ),
          CustomButton(
            padding: const EdgeInsets.all(4.0),
            onPressed: () {
              context.read<AssetsCubit>().sell(asset);
              context.router.pop();
            },
            child: Text(
              LocaleKeys.sell.tr(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(4.0),
            child: Divider(
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Builder(builder: (context) {
              List<Tenant> tenants = context.watch<TenantsCubit>().getTenantInAsset(asset);

              return ListView.builder(
                  itemCount: tenants.length,
                  itemBuilder: (context, index) {
                    Tenant tenant = tenants[index];
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4, right: 8),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: FaIcon(FontAwesomeIcons.peopleGroup),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
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
                                              text: '${tenant.rent.toInt().toString()}\$',
                                            ),
                                          ],
                                        ),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          style: Theme.of(context).textTheme.bodyText1,
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: '${LocaleKeys.rating.tr()}: ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1!
                                                  .copyWith(fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(
                                              text: tenant.rating.toString(),
                                            ),
                                          ],
                                        ),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          style: Theme.of(context).textTheme.bodyText1,
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: '${LocaleKeys.hasAnimal.tr()}: ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1!
                                                  .copyWith(fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(
                                              text: tenant.hasAnimal.toString(),
                                            ),
                                          ],
                                        ),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          style: Theme.of(context).textTheme.bodyText1,
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: '${LocaleKeys.satisfaction.tr()}: ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1!
                                                  .copyWith(fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(
                                              text: '${tenant.satisfaction.toString()}%',
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () => context
                                    .read<TenantsCubit>()
                                    .removeTenant(asset: asset, tenant: tenant),
                                icon: const FaIcon(FontAwesomeIcons.xmark),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            }),
          ),
          SizedBox(
            height: 80,
          )
        ],
      );
    }

    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<AssetsCubit, AssetsState>(
          builder: (context, state) {
            return state.maybeWhen(
                orElse: () => Container(),
                loaded: (assets) {
                  Asset? asset = assets.firstWhereOrNull((element) => element.id == id);

                  if (asset != null) return buildBody(asset);

                  return Container();
                });
          },
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
              NextDayButton(),
            ],
          ),
        ),
      ),
    );
  }
}
