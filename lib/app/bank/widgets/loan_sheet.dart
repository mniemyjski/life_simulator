import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../constants/constants.dart';
import '../../../widgets/widgets.dart';
import '../cubit/loan/loan_cubit.dart';
import '../models/loan/loan_model.dart';

class LoanSheet extends StatefulWidget {
  const LoanSheet({Key? key}) : super(key: key);

  @override
  State<LoanSheet> createState() => _LoanSheetState();
}

class _LoanSheetState extends State<LoanSheet> {
  double interest = 0.04;

  //toDo add last year income
  double maxBorrow = 50000;
  double maxTurns = 60;
  double turns = 3;
  double borrow = 1000;

  @override
  Widget build(BuildContext context) {
    return CustomSheetDesign(
      child: Padding(
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
                onPressed: () async {
                  Loan loan = Loan(
                    borrowed: borrow.toInt().toDouble(),
                    leftLoan: (borrow + (borrow * turns * interest)).toInt().toDouble(),
                    monthlyRate: ((borrow + (borrow * turns * interest)) ~/ turns).toDouble(),
                    interest: interest,
                    months: turns.toInt(),
                    leftMonths: turns.toInt(),
                  );
                  String? toast = await context.read<LoanCubit>().add(loan);
                  BotToast.showText(text: toast, align: const Alignment(0.1, 0.05));
                  context.router.pop();
                },
                child: Text(
                  LocaleKeys.confirm.tr(),
                )),
          ],
        ),
      ),
    );
  }
}
