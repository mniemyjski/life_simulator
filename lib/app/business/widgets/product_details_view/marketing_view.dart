import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/constants/constants.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/widgets.dart';

import '../../cubit/product_details/product_details_cubit.dart';
import '../../models/employee/employee_model.dart';
import '../assign_employee_element.dart';

class MarketingView extends StatefulWidget {
  const MarketingView({Key? key}) : super(key: key);

  @override
  State<MarketingView> createState() => _MarketingViewState();
}

class _MarketingViewState extends State<MarketingView> {
  @override
  Widget build(BuildContext context) {
    double monthlyMarketing = context
        .watch<ProductDetailsCubit>()
        .state
        .maybeWhen(orElse: () => 0, loaded: (product, free, busy) => product.monthlyMarketingCost);

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 4, top: 8),
            child: Text(LocaleKeys.marketing.tr()),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: CustomSlider(
                value: monthlyMarketing,
                min: 0,
                max: 1000000,
                division: 100,
                txt: monthlyMarketing.toMoney(),
                onChanged: (value) =>
                    context.read<ProductDetailsCubit>().setMonthlyMarketing(value)),
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CustomCard(
                        child: SizedBox(
                          height: 48,
                          child: Center(
                              child: Text(
                            LocaleKeys.marketer.tr(),
                            style: Theme.of(context).textTheme.bodyText2,
                          )),
                        ),
                      ),
                    ),
                    CustomCard(
                      padding: 0,
                      child: SizedBox(
                        width: 56,
                        height: 48,
                        child: Center(
                            child: AutoSizeText(
                          LocaleKeys.amount.tr(),
                          minFontSize: 6,
                          maxLines: 1,
                        )),
                      ),
                    ),
                    const SizedBox(width: 4),
                    CustomCard(
                      padding: 0,
                      child: SizedBox(
                        width: 56,
                        height: 48,
                        child: Center(
                            child: AutoSizeText(
                          LocaleKeys.available.tr(),
                          minFontSize: 6,
                          maxLines: 1,
                        )),
                      ),
                    ),
                    const SizedBox(width: 4),
                    CustomCard(
                      padding: 0,
                      child: SizedBox(
                        width: 102,
                        height: 48,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AutoSizeText(
                              '${LocaleKeys.efficiency.tr()}:',
                              minFontSize: 6,
                              maxLines: 1,
                            ),
                            AutoSizeText(
                              context
                                  .watch<ProductDetailsCubit>()
                                  .efficient(ETypeEmployees.marketer),
                              minFontSize: 6,
                              maxLines: 1,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
                Expanded(
                  child: Scrollbar(
                    child: ListView.builder(
                      itemCount: 10,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final int lvl = index + 1;
                        return AssignEmployeeElement(
                          lvl: lvl,
                          amount: context
                              .watch<ProductDetailsCubit>()
                              .getBusy(lvl: lvl, eTypeEmployees: ETypeEmployees.marketer),
                          available: context
                              .watch<ProductDetailsCubit>()
                              .getFree(lvl: lvl, eTypeEmployees: ETypeEmployees.marketer),
                          increase: () => context
                              .read<ProductDetailsCubit>()
                              .assign(lvl: lvl, eTypeEmployees: ETypeEmployees.marketer),
                          decrease: () => context
                              .read<ProductDetailsCubit>()
                              .unAssign(lvl: lvl, eTypeEmployees: ETypeEmployees.marketer),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
