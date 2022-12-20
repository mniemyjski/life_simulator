import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/app/business/cubit/balance_business/balance_business_cubit.dart';
import 'package:richeable/constants/constants.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/custom_card.dart';

import '../../../widgets/widgets.dart';

class DepositSheet extends StatefulWidget {
  final double max;
  const DepositSheet({Key? key, required this.max}) : super(key: key);

  @override
  State<DepositSheet> createState() => _DepositSheetState();
}

class _DepositSheetState extends State<DepositSheet> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return CustomSheetDesign(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 2, top: 4, bottom: 4),
          child: Text('${LocaleKeys.deposit.tr()}:'),
        ),
        CustomCard(
            padding: 0,
            child: Row(
              children: [
                Expanded(
                  child: Slider(
                    activeColor: Colors.white70,
                    inactiveColor: Colors.white70,
                    value: value,
                    min: 0,
                    max: widget.max,
                    divisions: widget.max.toInt(),
                    onChanged: (v) => setState(() => value = v),
                  ),
                ),
                Text(value.toMoney()),
                const SizedBox(width: 8),
              ],
            )),
        const SizedBox(height: 8),
        CustomButton(
          onPressed: () {
            context.read<BalanceBusinessCubit>().deposit(value);
            context.router.pop();
          },
          child: Text(LocaleKeys.submit.tr()),
        ),
      ],
    ));
  }
}
