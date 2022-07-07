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
            showModalBottomSheet<void>(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              context: context,
              builder: (BuildContext context) {
                double _newDeposit = context.read<DepositCubit>().state;
                final double _oldDeposit = context.read<DepositCubit>().state;
                final double _money = context.watch<MoneyCubit>().state;
                final double _max = context.read<DepositCubit>().state + (_money > 0 ? _money : 0);

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
                                value: _newDeposit,
                                activeColor: Colors.white70,
                                inactiveColor: Colors.white70,
                                min: 0,
                                max: _max,
                                divisions: _max ~/ 10,
                                onChanged: (double value) => setState(() => _newDeposit = value),
                              ),
                            ),
                            Text('${_newDeposit.toMoney()}'),
                          ],
                        ),
                        CustomButton(
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
                            child: Text(
                              LocaleKeys.confirm.tr(),
                            ))
                      ],
                    ),
                  );
                });
              },
            );
          },
          child: Text(LocaleKeys.deposit.tr())),
    );
  }
}
