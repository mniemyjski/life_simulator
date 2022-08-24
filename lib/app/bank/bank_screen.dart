import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/bank/cubit/deposit/deposit_cubit.dart';
import 'package:life_simulator/app/bank/cubit/loan/loan_cubit.dart';
import 'package:life_simulator/constants/constants.dart';
import 'package:life_simulator/utilities/utilities.dart';

import '../../widgets/widgets.dart';
import '../date/widgets/next_day.dart';
import '../game/widget/app_bar_stats.dart';
import '../money/cubit/money_cubit.dart';
import '../money/models/transaction/transaction_model.dart';
import 'models/loan/loan_model.dart';

class BankScreen extends StatelessWidget {
  const BankScreen({Key? key}) : super(key: key);

  _onTapDeposit(BuildContext context) async {
    return showModalBottomSheet<void>(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      context: context,
      builder: (BuildContext context) {
        double newDeposit = context.read<DepositCubit>().state;
        final double oldDeposit = context.read<DepositCubit>().state;
        final double money = context.watch<MoneyCubit>().state;
        final double max = context.read<DepositCubit>().state + (money > 0 ? money : 0);

        return StatefulBuilder(builder: (context, setState) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${LocaleKeys.deposit.tr()}:',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Slider(
                        value: newDeposit,
                        activeColor: Colors.white70,
                        inactiveColor: Colors.white70,
                        min: 0,
                        max: max,
                        divisions: max ~/ 10,
                        onChanged: (double value) => setState(() => newDeposit = value),
                      ),
                    ),
                    Text('${newDeposit.toMoney()}'),
                  ],
                ),
                CustomButton(
                    onPressed: () {
                      if (newDeposit > oldDeposit) {
                        context.read<DepositCubit>().change(newDeposit);

                        context.read<MoneyCubit>().addTransaction(
                            value: -newDeposit,
                            eTypeTransactionSource: ETypeTransactionSource.bankDeposit);
                      } else if (newDeposit < oldDeposit) {
                        context.read<DepositCubit>().change(-oldDeposit + newDeposit);
                        context.read<MoneyCubit>().addTransaction(
                            value: oldDeposit - newDeposit,
                            eTypeTransactionSource: ETypeTransactionSource.bankDeposit);
                      }
                      context.router.pop();
                    },
                    child: Text(
                      LocaleKeys.confirm.tr(),
                    ))
              ],
            ),
          );
        });
      },
    );
  }

  _onTapLoan(BuildContext context) async {
    showModalBottomSheet<void>(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      context: context,
      builder: (BuildContext context) {
        double interest = 0.04;
        double maxBorrow = 50000;
        double maxTurns = 60;
        double turns = 3;
        double borrow = 1000;

        return StatefulBuilder(builder: (context, setState) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  '${LocaleKeys.loan.tr()}:',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Slider(
                        value: borrow,
                        min: 1000,
                        max: maxBorrow,
                        activeColor: Colors.white70,
                        inactiveColor: Colors.white70,
                        divisions: maxBorrow ~/ 1000,
                        onChanged: (double value) => setState(() => borrow = value),
                      ),
                    ),
                    Text('${borrow.toMoney()}')
                  ],
                ),
                Text(
                  '${LocaleKeys.months.tr()}:',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Slider(
                        value: turns,
                        min: 3,
                        max: maxTurns,
                        activeColor: Colors.white70,
                        inactiveColor: Colors.white70,
                        divisions: maxTurns.toInt(),
                        onChanged: (double value) => setState(() => turns = value),
                      ),
                    ),
                    Text(turns.toInt().toString()),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyText2,
                      children: <TextSpan>[
                        TextSpan(
                            text: '${LocaleKeys.monthlyRate.tr()}: ',
                            style: const TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: '${(borrow + (borrow * turns * interest)) ~/ turns}\$')
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
                        TextSpan(
                            text: '${LocaleKeys.cost.tr()}: ',
                            style: const TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                          text: '${(borrow + (borrow * turns * interest)).toInt()}\$',
                        ),
                      ],
                    ),
                  ),
                ),
                CustomButton(
                    onPressed: () {
                      Loan loan = Loan(
                        borrowed: borrow.toInt().toDouble(),
                        leftLoan: (borrow + (borrow * turns * interest)).toInt().toDouble(),
                        monthlyRate: ((borrow + (borrow * turns * interest)) ~/ turns).toDouble(),
                        interest: interest,
                        months: turns.toInt(),
                        leftMonths: turns.toInt(),
                      );
                      String? toast = context.read<LoanCubit>().add(loan);
                      BotToast.showText(text: toast, align: const Alignment(0.1, 0.05));
                      context.router.pop();
                    },
                    child: Text(
                      LocaleKeys.confirm.tr(),
                    )),
              ],
            ),
          );
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppBarStats(),
          Card(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyText1,
                  children: <TextSpan>[
                    TextSpan(
                      text: '${LocaleKeys.deposit.tr()}: ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
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
          Card(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyText1,
                  children: <TextSpan>[
                    TextSpan(
                      text: '${LocaleKeys.loan.tr()}: ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
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
          Card(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyText1,
                  children: <TextSpan>[
                    TextSpan(
                      text: '${LocaleKeys.monthlyRate.tr()}: ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
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
                                          style: const TextStyle(fontWeight: FontWeight.bold)),
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
                                          style: const TextStyle(fontWeight: FontWeight.bold)),
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
                                          style: const TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: Theme.of(context).textTheme.bodyText1,
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
    ));
  }
}
