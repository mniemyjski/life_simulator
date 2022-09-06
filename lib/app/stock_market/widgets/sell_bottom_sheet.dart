import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../widgets/widgets.dart';
import '../../money/cubit/money_cubit.dart';
import '../cubit/exchanges/exchanges_cubit.dart';
import '../models/instrument/instrument.dart';

class SellBottomSheet extends StatefulWidget {
  final Instrument instrument;
  final String buttonName;
  final double amount;

  const SellBottomSheet({
    required this.instrument,
    required this.buttonName,
    required this.amount,
    Key? key,
  }) : super(key: key);

  @override
  State<SellBottomSheet> createState() => _SellBottomSheetState();
}

class _SellBottomSheetState extends State<SellBottomSheet> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoneyCubit, double>(
      builder: (context, state) {
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
                      max: widget.amount,
                      activeColor: Colors.white70,
                      inactiveColor: Colors.white70,
                      divisions: 100,
                      onChanged: (double v) => setState(() => value = v),
                    ),
                  ),
                  Column(
                    children: [
                      Text('${value.toStringAsFixed(4)} ${widget.instrument.name}'),
                      Text('${(value * widget.instrument.candles.last.close).toMoney()}'),
                    ],
                  )
                ],
              ),
              CustomButton(
                  onPressed: () {
                    context
                        .read<ExchangesCubit>()
                        .sell(idInstrument: widget.instrument.id, count: value);
                    context.router.pop();
                  },
                  child: Text(
                    widget.buttonName,
                  )),
            ],
          ),
        );
      },
    );
  }
}
