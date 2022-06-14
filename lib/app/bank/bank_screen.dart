import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/bank/cubit/deposit/deposit_cubit.dart';
import 'package:life_simulator/app/bank/cubit/loan/loan_cubit.dart';
import 'package:life_simulator/app/bank/widgets/deposit_button.dart';
import 'package:life_simulator/app/bank/widgets/loan_button.dart';
import 'package:life_simulator/constants/constants.dart';
import 'package:life_simulator/utilities/utilities.dart';

import '../date/widgets/next_day.dart';
import '../game/widget/app_bar_stats.dart';
import 'models/loan/loan_model.dart';

class BankScreen extends StatelessWidget {
  const BankScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBarStats(),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyText2,
                children: <TextSpan>[
                  TextSpan(text: '${LocaleKeys.deposit.tr()}: '),
                  TextSpan(
                    text: '${context.watch<DepositCubit>().state.toInt()}\$',
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText2!.color,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyText2,
                children: <TextSpan>[
                  TextSpan(text: '${LocaleKeys.loan.tr()}: '),
                  TextSpan(
                      text: '${context.watch<LoanCubit>().loan().toInt()}\$',
                      style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText2!.color,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyText2,
                children: <TextSpan>[
                  TextSpan(text: '${LocaleKeys.monthlyRate.tr()}: '),
                  TextSpan(
                      text: '${context.watch<LoanCubit>().monthlyRate().toInt()}\$',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          DepositButton(),
          LoanButton(),
          Expanded(child: BlocBuilder<LoanCubit, LoanState>(
            builder: (context, state) {
              return state.maybeWhen(
                  orElse: () => Container(),
                  loaded: (loans) {
                    return ListView.builder(
                        itemCount: loans.length,
                        itemBuilder: (context, index) {
                          Loan element = loans[index];

                          return Card(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    style: Theme.of(context).textTheme.bodyText1,
                                    children: <TextSpan>[
                                      TextSpan(text: '${LocaleKeys.borrowed.tr()}: '),
                                      TextSpan(
                                          text: '${element.borrowed.toInt()}\$',
                                          style: TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: Theme.of(context).textTheme.bodyText1,
                                    children: <TextSpan>[
                                      TextSpan(text: '${LocaleKeys.left.tr()}: '),
                                      TextSpan(
                                          text: '${element.leftLoan.toInt()}\$',
                                          style: TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: Theme.of(context).textTheme.bodyText1,
                                    children: <TextSpan>[
                                      TextSpan(text: '${LocaleKeys.monthlyRate.tr()}: '),
                                      TextSpan(
                                          text: '${element.getRate()}\$',
                                          style: TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: Theme.of(context).textTheme.bodyText1,
                                    children: <TextSpan>[
                                      TextSpan(text: '${LocaleKeys.nextRate.tr()}: '),
                                      TextSpan(
                                          text: '${element.nextToString()}\$',
                                          style: TextStyle(fontWeight: FontWeight.bold)),
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
          children: [
            FloatingActionButton(
              heroTag: null,
              onPressed: () => context.router.pop(),
              child: FaIcon(FontAwesomeIcons.arrowRotateLeft),
            ),
            NextDayButton(),
          ],
        ),
      ),
    ));
  }
}
