import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../constants/constants.dart';
import '../../../widgets/widgets.dart';
import '../../date/cubit/date_cubit.dart';
import '../../money/cubit/money/money_cubit.dart';
import '../../money/models/transaction/transaction_model.dart';
import '../cubit/deposit/deposit_cubit.dart';

class DepositSheet extends StatefulWidget {
  const DepositSheet({Key? key}) : super(key: key);

  @override
  State<DepositSheet> createState() => _DepositSheetState();
}

class _DepositSheetState extends State<DepositSheet> {
  @override
  Widget build(BuildContext context) {
    double newDeposit = context.read<DepositCubit>().state;
    final double oldDeposit = context.read<DepositCubit>().state;
    final double money = context.watch<MoneyCubit>().getBalance();
    final double max = context.read<DepositCubit>().state + (money > 0 ? money : 0);

    return CustomSheetDesign(
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
                context.read<DateCubit>().state.whenOrNull(loaded: (date) {
                  if (newDeposit > oldDeposit) {
                    context.read<DepositCubit>().change(newDeposit);

                    context.read<MoneyCubit>().addTransaction(
                        dateTime: date,
                        value: -newDeposit,
                        eTypeTransactionSource: ETypeTransactionSource.bankDeposit);
                  } else if (newDeposit < oldDeposit) {
                    context.read<DepositCubit>().change(-oldDeposit + newDeposit);
                    context.read<MoneyCubit>().addTransaction(
                        dateTime: date,
                        value: oldDeposit - newDeposit,
                        eTypeTransactionSource: ETypeTransactionSource.bankDeposit);
                  }
                  context.router.pop();
                });
              },
              child: Text(
                LocaleKeys.confirm.tr(),
              ))
        ],
      ),
    );
  }
}
