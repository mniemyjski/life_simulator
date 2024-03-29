import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/app/game/widget/app_bar_game.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/custom_card.dart';

import '../../constants/locale_keys.g.dart';
import '../../widgets/widgets.dart';
import '../date/widgets/next_day.dart';
import 'cubit/assets/assets_cubit.dart';
import 'cubit/tenant/tenants_cubit.dart';
import 'models/asset/asset_model.dart';
import 'models/tenant/tenant_model.dart';
import 'widgets/asset_element.dart';
import 'widgets/min_rating_button.dart';
import 'widgets/renovation_button.dart';
import 'widgets/rent_button.dart';
import 'widgets/upgrade_button.dart';

class AssetScreen extends StatelessWidget {
  final String id;
  const AssetScreen({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Column buildBody(Asset asset) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: AssetElement(asset: asset)),
              Expanded(
                  child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: CustomCard(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: Theme.of(context).textTheme.bodyText2,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '${LocaleKeys.rent.tr()}: ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
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
                                style: Theme.of(context).textTheme.bodyText2,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '${LocaleKeys.minRating.tr()}: ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
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
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: CustomButton(
              onPressed: () {
                context.read<AssetsCubit>().sell(asset);
                context.router.pop();
              },
              child: Text(
                LocaleKeys.sell.tr(),
              ),
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          Expanded(
            child: Builder(builder: (context) {
              List<Tenant> tenants = context.watch<TenantsCubit>().getTenantInAsset(asset);

              return ListView.builder(
                  itemCount: tenants.length,
                  itemBuilder: (context, index) {
                    Tenant tenant = tenants[index];
                    return CustomCard(
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
                                    child: FaIcon(
                                      FontAwesomeIcons.peopleGroup,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          style: Theme.of(context).textTheme.bodyText2,
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: '${LocaleKeys.rent.tr()}: ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2!
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
                                          style: Theme.of(context).textTheme.bodyText2,
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: '${LocaleKeys.rating.tr()}: ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2!
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
                                          style: Theme.of(context).textTheme.bodyText2,
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: '${LocaleKeys.hasAnimal.tr()}: ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2!
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
                                          style: Theme.of(context).textTheme.bodyText2,
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: '${LocaleKeys.satisfaction.tr()}: ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2!
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
                                icon: const FaIcon(
                                  FontAwesomeIcons.xmark,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            }),
          ),
          const SizedBox(
            height: 80,
          )
        ],
      );
    }

    return CustomScaffold(
      appBar: AppBarGame(title: LocaleKeys.asset.tr()),
      body: BlocBuilder<AssetsCubit, AssetsState>(
        builder: (context, state) {
          return state.maybeWhen(
              orElse: () => Container(),
              loaded: (assets, currentDate) {
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
            const NextDayButton(),
            const SizedBox(
              width: 56,
            ),
          ],
        ),
      ),
    );
  }
}
