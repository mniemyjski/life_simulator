import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/bank/cubit/deposit/deposit_cubit.dart';
import 'package:life_simulator/app/money/cubit/money_cubit.dart';
import 'package:life_simulator/constants/constants.dart';
import 'package:life_simulator/utilities/utilities.dart';
import 'package:life_simulator/widgets/widgets.dart';

import '../date/cubit/date_cubit.dart';
import '../game/widget/app_bar_stats.dart';

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
                children: <TextSpan>[
                  TextSpan(
                      text: '${LocaleKeys.deposit.tr()}: ',
                      style: TextStyle(color: Theme.of(context).textTheme.bodyText2!.color)),
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
                children: <TextSpan>[
                  TextSpan(
                      text: '${LocaleKeys.loan.tr()}: ',
                      style: TextStyle(color: Theme.of(context).textTheme.bodyText2!.color)),
                  TextSpan(
                      text: '0\$',
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
                children: <TextSpan>[
                  TextSpan(
                      text: '${LocaleKeys.monthlyRate.tr()}: ',
                      style: TextStyle(color: Theme.of(context).textTheme.bodyText2!.color)),
                  TextSpan(
                      text: '0\$',
                      style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText2!.color,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: CustomButton(
                onPressed: () async {
                  return showDialog<void>(
                    context: context,
                    barrierDismissible: false, // user must tap button!
                    builder: (BuildContext context) {
                      final double _oldDeposit = context.read<DepositCubit>().state;
                      double _newDeposit = context.read<DepositCubit>().state;
                      final double _max =
                          context.read<DepositCubit>().state + context.watch<MoneyCubit>().state;
                      return AlertDialog(
                        title: Text(LocaleKeys.deposit.tr()),
                        // titlePadding: EdgeInsets.zero,
                        content: StatefulBuilder(builder: (context, setState) {
                          return SizedBox(
                            height: 150,
                            child: Slider(
                              value: _newDeposit,
                              max: _max,
                              divisions: _max ~/ 10,
                              label: '${_newDeposit.toInt()}',
                              onChanged: (double value) => setState(() => _newDeposit = value),
                            ),
                          );
                        }),
                        actions: <Widget>[
                          TextButton(
                            child: Text(LocaleKeys.cancel.tr()),
                            onPressed: () => context.router.pop(),
                          ),
                          TextButton(
                            child: Text(LocaleKeys.confirm.tr()),
                            onPressed: () {
                              if (_newDeposit > _oldDeposit) {
                                context.read<DepositCubit>().change(_newDeposit);
                                context.read<MoneyCubit>().change(-_newDeposit);
                              } else if (_newDeposit < _oldDeposit) {
                                context.read<DepositCubit>().change(-_oldDeposit + _newDeposit);
                                context.read<MoneyCubit>().change(_oldDeposit - _newDeposit);
                              }
                              context.router.pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text(LocaleKeys.deposit.tr())),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: CustomButton(onPressed: () => null, child: Text(LocaleKeys.loan.tr())),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: CustomButton(onPressed: () => null, child: Text(LocaleKeys.payOffTheLoan.tr())),
          ),
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
            FloatingActionButton(
              onPressed: () => context.read<DateCubit>().nextDay(),
              child: FaIcon(FontAwesomeIcons.hourglass),
            )
          ],
        ),
      ),
    ));
  }
}
