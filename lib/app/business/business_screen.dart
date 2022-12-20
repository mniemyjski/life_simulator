import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/app/business/cubit/balance_business/balance_business_cubit.dart';
import 'package:richeable/app/business/models/business/business_model.dart';
import 'package:richeable/app/business/widgets/deposit_sheet.dart';
import 'package:richeable/app/business/widgets/withdraw_sheet.dart';
import 'package:richeable/app/date/widgets/next_day.dart';
import 'package:richeable/app/game/widget/app_bar_game.dart';
import 'package:richeable/app/money/cubit/money/money_cubit.dart';
import 'package:richeable/constants/constants.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/custom_button.dart';
import 'package:richeable/widgets/custom_card.dart';
import 'package:richeable/widgets/custom_scaffold.dart';

import '../../config/injectable/injection.dart';
import '../../config/routes/routes.gr.dart';
import 'cubit/businesses_list/businesses_cubit.dart';

class BusinessScreen extends StatelessWidget {
  final int businessId;

  const BusinessScreen({
    Key? key,
    required this.businessId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<BalanceBusinessCubit>(param1: businessId),
      child: BlocBuilder<BusinessesCubit, BusinessesState>(
        builder: (context, state) {
          return state.maybeWhen(
              orElse: () => Container(),
              loaded: (businesses) {
                Business? business =
                    businesses.firstWhereOrNull((element) => element.id == businessId);

                if (business == null) return Container();

                return CustomScaffold(
                  appBar: AppBarGame(
                    title: business.name,
                    showTimeSpend: false,
                  ),
                  body: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      children: [
                        CustomCard(
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    style: Theme.of(context).textTheme.bodyText2,
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '${LocaleKeys.workers.tr()}: ',
                                        style: const TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                          text: '${business.countWorkers}/${business.maxWorkers}'),
                                    ],
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: Theme.of(context).textTheme.bodyText2,
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '${LocaleKeys.scientist.tr()}: ',
                                        style: const TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                          text:
                                              '${business.countScientist}/${business.maxScientist}'),
                                    ],
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: Theme.of(context).textTheme.bodyText2,
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '${LocaleKeys.accountant.tr()}: ',
                                        style: const TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                          text:
                                              '${business.countAccountant}/${business.maxAccountant}'),
                                    ],
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: Theme.of(context).textTheme.bodyText2,
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '${LocaleKeys.analyst.tr()}: ',
                                        style: const TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                          text: '${business.countAnalyst}/${business.maxAnalyst}'),
                                    ],
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: Theme.of(context).textTheme.bodyText2,
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '${LocaleKeys.manager.tr()}: ',
                                        style: const TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                          text: '${business.countManager}/${business.maxManager}'),
                                    ],
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: Theme.of(context).textTheme.bodyText2,
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '${LocaleKeys.marketer.tr()}: ',
                                        style: const TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                          text:
                                              '${business.countMarketer}/${business.maxMarketer}'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CustomCard(
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 48,
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Center(
                                      child: RichText(
                                        text: TextSpan(
                                          style: Theme.of(context).textTheme.bodyText2,
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: '${LocaleKeys.balance.tr()}: ',
                                              style: const TextStyle(fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(
                                                text: context
                                                    .watch<BalanceBusinessCubit>()
                                                    .state
                                                    .maybeWhen(
                                                        orElse: () => '0',
                                                        loaded: (balance) => balance.toMoney())),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: CustomCard(
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 48,
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Center(
                                      child: RichText(
                                        text: TextSpan(
                                          style: Theme.of(context).textTheme.bodyText2,
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: '${LocaleKeys.taxes.tr()}: ',
                                              style: const TextStyle(fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(text: '${0.0.toMoney()}'),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            CustomButton(
                              onPressed: () => null,
                              child: const Icon(FontAwesomeIcons.moneyBill),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8, right: 8),
                          child: Divider(
                            color: Colors.white38,
                          ),
                        ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: DottedBorder(
                            color: Theme.of(context).primaryColor.withOpacity(0.4),
                            strokeWidth: 1,
                            child: Container(),
                          ),
                        )),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: GridView.count(
                            padding: const EdgeInsets.all(1),
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                            crossAxisCount: 4,
                            shrinkWrap: true,
                            children: [
                              CustomButton(
                                onPressed: () {
                                  context.router.push(ProductListRoute(businessId: businessId));
                                },
                                child: Text(
                                  LocaleKeys.products.tr(),
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ),
                              CustomButton(
                                onPressed: () {
                                  context.router.push(EmployeesRoute(businessId: businessId));
                                },
                                child: Text(
                                  LocaleKeys.employees.tr(),
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ),
                              CustomButton(
                                onPressed: () {
                                  context.router.push(UpgradeRoute(businessId: businessId));
                                },
                                child: Text(
                                  LocaleKeys.upgrade.tr(),
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ),
                              CustomButton(
                                onPressed: () {
                                  context.router
                                      .push(BusinessTransactionsRoute(businessId: businessId));
                                },
                                child: Text(
                                  LocaleKeys.transactions.tr(),
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ),
                              CustomButton(
                                onPressed: () {},
                                child: Text(
                                  LocaleKeys.marketing.tr(),
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ),
                              CustomButton(
                                onPressed: () {
                                  context.read<BalanceBusinessCubit>().state.whenOrNull(
                                      loaded: (balance) {
                                    if (balance < 1) {
                                      BotToast.showText(
                                          text: 'notEnoughMoney',
                                          align: const Alignment(0.1, 0.05));
                                      return;
                                    }
                                    showModalBottomSheet<void>(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (_) => BlocProvider.value(
                                              value: BlocProvider.of<BalanceBusinessCubit>(context),
                                              child: WithdrawSheet(
                                                max: balance,
                                              ),
                                            ));
                                  });
                                },
                                child: Text(
                                  LocaleKeys.withdraw.tr(),
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ),
                              CustomButton(
                                onPressed: () {
                                  context.read<MoneyCubit>().state.whenOrNull(loaded: (balance) {
                                    if (balance < 1) {
                                      BotToast.showText(
                                          text: 'notEnoughMoney',
                                          align: const Alignment(0.1, 0.05));
                                      return;
                                    }
                                    showModalBottomSheet<void>(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (_) => BlocProvider.value(
                                              value: BlocProvider.of<BalanceBusinessCubit>(context),
                                              child: DepositSheet(
                                                max: balance,
                                              ),
                                            ));
                                  });
                                },
                                child: Text(
                                  LocaleKeys.deposit.tr(),
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ),
                              CustomButton(
                                backgroundColor: Colors.red[900],
                                onPressed: () {
                                  context.router.pop();
                                  context.read<BusinessesCubit>().remove(business);
                                },
                                child: Text(
                                  LocaleKeys.remove.tr(),
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 80),
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
                        const NextDayButton(),
                        const SizedBox(width: 56),
                      ],
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
