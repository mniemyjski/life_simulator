import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../widgets/widgets.dart';
import '../cubit/exchanges/exchanges_cubit.dart';
import '../models/candle/candle.dart';
import '../models/instrument/instrument.dart';

class BuyBottomSheet extends StatefulWidget {
  final Instrument instrument;
  final Candle lastCandle;
  final String buttonName;
  final double money;

  const BuyBottomSheet({
    required this.instrument,
    required this.buttonName,
    required this.money,
    required this.lastCandle,
    Key? key,
  }) : super(key: key);

  @override
  State<BuyBottomSheet> createState() => _BuyBottomSheetState();
}

class _BuyBottomSheetState extends State<BuyBottomSheet> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    double maxMoney = 1000000;
    double max = (widget.money <= maxMoney ? widget.money : maxMoney) / widget.lastCandle.close;

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
                  value: value,
                  min: 0,
                  max: max,
                  activeColor: Colors.white70,
                  inactiveColor: Colors.white70,
                  divisions: 100,
                  onChanged: (double v) => setState(() => value = v),
                ),
              ),
              Column(
                children: [
                  Text('${(value * 0.99).toStringAsFixed(4)} ${widget.instrument.name}'),
                  Text('${(value * widget.lastCandle.close).toMoney()}'),
                ],
              )
            ],
          ),
          CustomButton(
              onPressed: () {
                context
                    .read<ExchangesCubit>()
                    .buy(idInstrument: widget.instrument.id, count: value * 0.99);
                context.router.pop();
              },
              child: Text(
                widget.buttonName,
              )),
        ],
      ),
    );
  }
}
