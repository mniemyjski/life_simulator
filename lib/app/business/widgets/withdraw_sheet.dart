import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../constants/constants.dart';
import '../../../widgets/custom_card.dart';
import '../../../widgets/widgets.dart';
import '../cubit/balance_business/balance_business_cubit.dart';

class WithdrawSheet extends StatefulWidget {
  final double max;
  const WithdrawSheet({Key? key, required this.max}) : super(key: key);

  @override
  State<WithdrawSheet> createState() => _WithdrawSheetState();
}

class _WithdrawSheetState extends State<WithdrawSheet> {
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
          child: Text('${LocaleKeys.withdraw.tr()}:'),
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
            context.read<BalanceBusinessCubit>().withdraw(value);
            context.router.pop();
          },
          child: Text(LocaleKeys.submit.tr()),
        ),
      ],
    ));
  }
}
