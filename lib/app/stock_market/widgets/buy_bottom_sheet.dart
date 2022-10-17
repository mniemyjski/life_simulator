import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../widgets/widgets.dart';
import '../cubit/exchanges/exchanges_cubit.dart';
import '../models/instrument/instrument.dart';

class BuyBottomSheet extends StatefulWidget implements AutoRouteWrapper {
  final Instrument instrument;
  final String buttonName;
  final double money;

  const BuyBottomSheet({
    required this.instrument,
    required this.buttonName,
    required this.money,
    Key? key,
  }) : super(key: key);

  @override
  State<BuyBottomSheet> createState() => _BuyBottomSheetState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _BuyBottomSheetState extends State<BuyBottomSheet> {
  double count = 0;

  @override
  Widget build(BuildContext context) {
    double maxMoney = 1000000;
    double max = (widget.money <= maxMoney ? widget.money : maxMoney) / widget.instrument.lastClose;

    return CustomSheetDesign(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: Slider(
                    value: count,
                    min: 0,
                    max: max,
                    activeColor: Colors.white70,
                    inactiveColor: Colors.white70,
                    divisions: 100,
                    onChanged: (double v) => setState(() => count = v),
                  ),
                ),
                Column(
                  children: [
                    Text(
                        '${(count * 0.99).toStringAsFixed(4)} ${Enums.toText(widget.instrument.eNameInstrument)}'),
                    Text('${(count * widget.instrument.lastClose).toMoney()}'),
                  ],
                )
              ],
            ),
            CustomButton(
                onPressed: () async {
                  await context
                      .read<ExchangesCubit>()
                      .buy(instrumentId: widget.instrument.id, count: count);

                  context.router.pop();
                },
                child: Text(widget.buttonName)),
          ],
        ),
      ),
    );
  }
}
