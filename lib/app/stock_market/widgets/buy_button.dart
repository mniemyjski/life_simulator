import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_simulator/constants/constants.dart';
import 'package:life_simulator/utilities/utilities.dart';

import '../../../widgets/widgets.dart';
import '../cubit/exchanges/exchanges_cubit.dart';
import '../models/instrument/instrument.dart';

class BuyButton extends StatelessWidget {
  final Instrument instrument;
  const BuyButton({Key? key, required this.instrument}) : super(key: key);

  onPressed(BuildContext context) {
    return showModalBottomSheet<void>(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      context: context,
      builder: (BuildContext context) {
        double buy = 0;

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
                        value: buy,
                        min: 0,
                        max: 1000,
                        activeColor: Colors.white70,
                        inactiveColor: Colors.white70,
                        divisions: 100000,
                        onChanged: (double value) => setState(() => buy = value),
                      ),
                    ),
                    Column(
                      children: [
                        Text('${buy.toStringAsFixed(4)} ${instrument.name}'),
                        Text('${(buy * instrument.candles.last.close).toMoney()}'),
                      ],
                    )
                  ],
                ),
                CustomButton(
                    onPressed: () {
                      context.read<ExchangesCubit>().buy(idInstrument: instrument.id, count: buy);
                      context.router.pop();
                    },
                    child: Text(
                      LocaleKeys.buy.tr(),
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
      padding: const EdgeInsets.only(left: 4, right: 4),
      child: CustomButton(
        onPressed: () => onPressed(context),
        child: Text(
          LocaleKeys.buy.tr(),
        ),
      ),
    ));
  }
}
