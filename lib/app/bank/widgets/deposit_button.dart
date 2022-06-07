import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_simulator/utilities/utilities.dart';

import '../../../constants/constants.dart';
import '../../../widgets/widgets.dart';
import '../../money/cubit/money_cubit.dart';
import '../cubit/deposit/deposit_cubit.dart';

class DepositButton extends StatelessWidget {
  const DepositButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
