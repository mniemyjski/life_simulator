import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/app/business/cubit/balance_business/balance_business_cubit.dart';
import 'package:richeable/app/business/cubit/businesses/businesses_cubit.dart';
import 'package:richeable/app/business/models/business/business_model.dart';
import 'package:richeable/app/date/widgets/next_day.dart';
import 'package:richeable/app/game/widget/app_bar_game.dart';
import 'package:richeable/constants/constants.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/custom_button.dart';
import 'package:richeable/widgets/custom_card.dart';
import 'package:richeable/widgets/custom_scaffold.dart';

import '../../config/injectable/injection.dart';
import '../../config/routes/routes.gr.dart';

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
                            // CustomCard(
                            //     child: Padding(
                            //   padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8, right: 10),
                            //   child: IconButton(
                            //     padding: EdgeInsets.zero,
                            //     constraints: const BoxConstraints(),
                            //     onPressed: () => null,
                            //     icon: const Icon(FontAwesomeIcons.moneyBill),
                            //     color: Colors.white70,
                            //   ),
                            // )),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8, right: 8),
                          child: Divider(
                            color: Colors.white38,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: GridView.count(
                            padding: const EdgeInsets.all(1),
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                            crossAxisCount: 3,
                            shrinkWrap: true,
                            children: [
                              CustomButton(
                                onPressed: () {
                                  context.router.push(ProductRoute(businessId: businessId));
                                },
                                child: Text(LocaleKeys.products.tr()),
                              ),
                              CustomButton(
                                onPressed: () {
                                  context.router.push(EmployeesRoute(businessId: businessId));
                                },
                                child: Text(LocaleKeys.employees.tr()),
                              ),
                              CustomButton(
                                onPressed: () {
                                  context.router.push(UpgradeRoute(businessId: businessId));
                                },
                                child: Text(LocaleKeys.upgrade.tr()),
                              ),
                              CustomButton(
                                onPressed: () {
                                  context.router
                                      .push(BusinessTransactionsRoute(businessId: businessId));
                                },
                                child: Text(LocaleKeys.transactions.tr()),
                              ),
                              CustomButton(
                                onPressed: () {},
                                child: Text(LocaleKeys.marketing.tr()),
                              ),
                              CustomButton(
                                onPressed: () => context.read<BalanceBusinessCubit>().withdraw(5),
                                child: Text(LocaleKeys.withdraw.tr()),
                              ),
                              CustomButton(
                                onPressed: () => context.read<BalanceBusinessCubit>().deposit(5),
                                child: Text(LocaleKeys.deposit.tr()),
                              ),
                              CustomButton(
                                backgroundColor: Colors.red[900],
                                onPressed: () {
                                  context.router.pop();
                                  context.read<BusinessesCubit>().remove(business);
                                },
                                child: Text(LocaleKeys.remove.tr()),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
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
