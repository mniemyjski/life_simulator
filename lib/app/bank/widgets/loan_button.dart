import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_simulator/utilities/utilities.dart';

import '../../../constants/constants.dart';
import '../../../widgets/widgets.dart';
import '../cubit/loan/loan_cubit.dart';
import '../models/loan/loan_model.dart';

class LoanButton extends StatelessWidget {
  const LoanButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _interest = 0.04;
    final double _maxBorrow = 50000;
    final double _maxTurns = 60;
    double _turns = 3;
    double _borrow = 1000;

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: CustomButton(
          onPressed: () async {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return StatefulBuilder(builder: (context, setState) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          '${LocaleKeys.loan.tr()}:',
                          style: TextStyle(
                              color: Theme.of(context).textTheme.bodyText1!.color,
                              fontWeight: FontWeight.bold),
                        ),
                        Slider(
                          value: _borrow,
                          min: 1000,
                          max: _maxBorrow,
                          divisions: _maxBorrow ~/ 1000,
                          label: '${_borrow.toInt()}',
                          onChanged: (double value) => setState(() => _borrow = value),
                        ),
                        Text(
                          '${LocaleKeys.months.tr()}:',
                          style: TextStyle(
                              color: Theme.of(context).textTheme.bodyText1!.color,
                              fontWeight: FontWeight.bold),
                        ),
                        Slider(
                          value: _turns,
                          min: 3,
                          max: _maxTurns,
                          divisions: _maxTurns.toInt(),
                          label: '${_turns.toInt()}',
                          onChanged: (double value) => setState(() => _turns = value),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: RichText(
                            text: TextSpan(
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                    color: Theme.of(context).textTheme.bodyText1!.color,
                                  ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: '${LocaleKeys.monthlyRate.tr()}: ',
                                    style: TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text:
                                        '${(_borrow + (_borrow * _turns * _interest)) ~/ _turns}\$')
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: RichText(
                            text: TextSpan(
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                    color: Theme.of(context).textTheme.bodyText1!.color,
                                  ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: '${LocaleKeys.cost.tr()}: ',
                                    style: TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text: '${(_borrow + (_borrow * _turns * _interest)).toInt()}\$',
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomButton(
                            onPressed: () {
                              Loan loan = Loan(
                                borrowed: _borrow.toInt().toDouble(),
                                left: (_borrow + (_borrow * _turns * _interest)).toInt().toDouble(),
                                monthlyRate: ((_borrow + (_borrow * _turns * _interest)) ~/ _turns)
                                    .toDouble(),
                                interest: _interest,
                                turns: (_turns * 30).toInt() - 1,
                                turnsToEnd: (_turns * 30).toInt() - 1,
                              );
                              String? toast = context.read<LoanCubit>().add(loan);
                              BotToast.showText(text: toast, align: Alignment(0.1, 0.05));
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
          },
          child: Text(LocaleKeys.loan.tr())),
    );
  }
}
