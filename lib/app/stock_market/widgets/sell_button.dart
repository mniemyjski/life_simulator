import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_simulator/app/stock_market/models/instrument/instrument.dart';
import 'package:life_simulator/constants/constants.dart';
import 'package:life_simulator/utilities/utilities.dart';

import '../../../widgets/widgets.dart';
import '../cubit/transactions/transactions_cubit.dart';
import '../models/transaction/transaction.dart';

class SellButton extends StatelessWidget {
  final Instrument instrument;
  const SellButton({Key? key, required this.instrument}) : super(key: key);

  onPressed({required BuildContext context, required double amount}) {
    return showModalBottomSheet<void>(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      context: context,
      builder: (BuildContext context) {
        double sell = 0;

        return StatefulBuilder(builder: (context, setState) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  children: [
                    Expanded(
                      child: Slider(
                        value: sell,
                        min: 0,
                        max: amount,
                        activeColor: Colors.white70,
                        inactiveColor: Colors.white70,
                        divisions: amount.toInt(),
                        onChanged: (double value) => setState(() => sell = value),
                      ),
                    ),
                    Column(
                      children: [
                        Text('${sell.toStringAsFixed(4)} ${instrument.name}'),
                        Text('${(sell * instrument.candles.last.close).toMoney()}'),
                      ],
                    )
                  ],
                ),
                CustomButton(
                    onPressed: () {
                      context
                          .read<TransactionsCubit>()
                          .sell(idInstrument: instrument.id, count: sell);
                      context.router.pop();
                    },
                    child: Text(
                      LocaleKeys.sell.tr(),
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
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.only(right: 4),
      child: BlocBuilder<TransactionsCubit, TransactionsState>(
        builder: (context, state) {
          return state.maybeWhen(
              orElse: () => Container(),
              loaded: (t) {
                List<Transaction> transactions =
                    List.from(t.where((e) => e.instrument.id == instrument.id));

                double amount = 0;

                for (var element in transactions) {
                  amount += element.count;
                }

                return CustomButton(
                    onPressed: () => onPressed(context: context, amount: amount),
                    child: Text(LocaleKeys.sell.tr()));
              });
        },
      ),
    ));
  }
}
