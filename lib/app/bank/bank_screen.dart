import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/app/bank/widgets/deposit_sheet.dart';
import 'package:richeable/app/bank/widgets/loan_sheet.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/custom_card.dart';

import '../../constants/constants.dart';
import '../../widgets/widgets.dart';
import '../date/widgets/next_day.dart';
import '../game/widget/app_bar_game.dart';
import 'cubit/deposit/deposit_cubit.dart';
import 'cubit/loan/loan_cubit.dart';
import 'models/loan/loan_model.dart';

class BankScreen extends StatelessWidget {
  const BankScreen({Key? key}) : super(key: key);

  _onTapDeposit(BuildContext context) async {
    return showModalBottomSheet<void>(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) => const DepositSheet(),
    );
  }

  _onTapLoan(BuildContext context) async {
    showModalBottomSheet<void>(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) => const LoanSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBarGame(title: LocaleKeys.bank.tr()),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomCard(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyText2,
                  children: <TextSpan>[
                    TextSpan(
                      text: '${LocaleKeys.deposit.tr()}: ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: '${context.watch<DepositCubit>().state.toInt()}\$',
                    ),
                  ],
                ),
              ),
            ),
          ),
          CustomCard(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyText2,
                  children: <TextSpan>[
                    TextSpan(
                      text: '${LocaleKeys.loan.tr()}: ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: '${context.watch<LoanCubit>().loan().toInt()}\$',
                    ),
                  ],
                ),
              ),
            ),
          ),
          CustomCard(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyText2,
                  children: <TextSpan>[
                    TextSpan(
                      text: '${LocaleKeys.monthlyRate.tr()}: ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: '${context.watch<LoanCubit>().monthlyRate().toInt()}\$',
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 4.0),
            child: Text(
              '${LocaleKeys.loans.tr()}:',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Expanded(child: BlocBuilder<LoanCubit, LoanState>(
            builder: (context, state) {
              return state.maybeWhen(
                  orElse: () => Container(),
                  loaded: (loans, currentDate) {
                    if (loans.isEmpty) {
                      return Center(
                        child: Text(
                          LocaleKeys.youDontHaveAnyLoans.tr(),
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      );
                    }

                    return ListView.builder(
                        itemCount: loans.length,
                        itemBuilder: (context, index) {
                          Loan element = loans[index];

                          return CustomCard(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    style: Theme.of(context).textTheme.bodyText2,
                                    children: <TextSpan>[
                                      TextSpan(text: '${LocaleKeys.borrowed.tr()}: '),
                                      TextSpan(
                                          text: '${element.borrowed.toInt()}\$',
                                          style: const TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: Theme.of(context).textTheme.bodyText2,
                                    children: <TextSpan>[
                                      TextSpan(text: '${LocaleKeys.left.tr()}: '),
                                      TextSpan(
                                          text: '${element.leftLoan.toInt()}\$',
                                          style: const TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: Theme.of(context).textTheme.bodyText2,
                                    children: <TextSpan>[
                                      TextSpan(text: '${LocaleKeys.monthlyRate.tr()}: '),
                                      TextSpan(
                                          text: '${element.getRate()}\$',
                                          style: const TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: Theme.of(context).textTheme.bodyText2,
                                    children: <TextSpan>[
                                      TextSpan(text: '${LocaleKeys.nextRate.tr()}: '),
                                      TextSpan(
                                          text: element.next!.onlyDateToString(),
                                          style: const TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ));
                        });
                  });
            },
          ))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: null,
              onPressed: () => context.router.pop(),
              child: const FaIcon(FontAwesomeIcons.arrowRotateLeft),
            ),
            const NextDayButton(),
            SpeedDial(
              animatedIcon: AnimatedIcons.menu_close,
              spaceBetweenChildren: 4,
              spacing: 15,
              overlayColor: Colors.black,
              overlayOpacity: 0.5,
              children: [
                SpeedDialChild(
                  labelWidget: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Container(
                        width: 100,
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            LocaleKeys.deposit.tr(),
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  child: const FaIcon(FontAwesomeIcons.house),
                  onTap: () => _onTapDeposit(context),
                ),
                SpeedDialChild(
                  labelWidget: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Container(
                        width: 100,
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            LocaleKeys.loan.tr(),
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  child: const FaIcon(FontAwesomeIcons.moneyBill),
                  onTap: () => _onTapLoan(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
