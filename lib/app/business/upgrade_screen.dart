import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/app/business/cubit/businesses/businesses_cubit.dart';
import 'package:richeable/app/business/widgets/upgrade_element.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../constants/constants.dart';
import '../../widgets/widgets.dart';
import 'models/business/business_model.dart';

class UpgradeScreen extends StatelessWidget {
  final int businessId;

  const UpgradeScreen({Key? key, required this.businessId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BusinessesCubit, BusinessesState>(
      builder: (context, state) {
        return state.maybeWhen(
            orElse: () => Container(),
            loaded: (businesses) {
              Business business =
                  businesses.firstWhereOrNull((element) => element.id == businessId)!;

              return CustomScaffold(
                appBar: AppBar(
                  title: Text(LocaleKeys.upgrade.tr()),
                  automaticallyImplyLeading: false,
                ),
                body: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Column(
                    children: [
                      UpgradeElement(
                        value: business.maxWorkers,
                        text: LocaleKeys.workers.tr(),
                        buttonText: 'add 10 slots for 50k',
                        onPressed: () =>
                            context.read<BusinessesCubit>().increaseMaxWorkers(business),
                      ),
                      UpgradeElement(
                        value: business.maxScientist,
                        text: LocaleKeys.scientists.tr(),
                        buttonText: 'add 1 slot for 50k',
                        onPressed: () =>
                            context.read<BusinessesCubit>().increaseMaxScientist(business),
                      ),
                      UpgradeElement(
                        value: business.maxAccountant,
                        text: LocaleKeys.accountant.tr(),
                        buttonText: 'add 1 slot for 50k',
                        onPressed: () =>
                            context.read<BusinessesCubit>().increaseMaxAccountant(business),
                      ),
                      UpgradeElement(
                        value: business.maxAnalyst,
                        text: LocaleKeys.analyst.tr(),
                        buttonText: 'add 1 slot for 50k',
                        onPressed: () =>
                            context.read<BusinessesCubit>().increaseMaxAnalyst(business),
                      ),
                      UpgradeElement(
                        value: business.maxManager,
                        text: LocaleKeys.manager.tr(),
                        buttonText: 'add 1 slot for 50k',
                        onPressed: () =>
                            context.read<BusinessesCubit>().increaseMaxManager(business),
                      ),
                      UpgradeElement(
                        value: business.maxMarketer,
                        text: LocaleKeys.marketer.tr(),
                        buttonText: 'add 1 slot for 50k',
                        onPressed: () =>
                            context.read<BusinessesCubit>().increaseMaxMarketer(business),
                      ),
                    ],
                  ),
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
                      const SizedBox(width: 56),
                    ],
                  ),
                ),
              );
            });
      },
    );
  }
}
