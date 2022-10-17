import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/custom_button.dart';

import '../../../constants/constants.dart';
import '../cubit/exchanges/exchanges_cubit.dart';
import '../models/candle/candle.dart';
import '../models/exchange/exchange.dart';
import '../models/instrument/instrument.dart';
import 'sell_bottom_sheet.dart';

class SellButton extends StatelessWidget {
  const SellButton({
    Key? key,
    required this.instrument,
    required this.lastCandle,
  }) : super(key: key);

  final Instrument instrument;
  final Candle lastCandle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 4.9),
        child: BlocBuilder<ExchangesCubit, ExchangesState>(
          builder: (context, state) {
            return state.maybeWhen(
                orElse: () => Container(),
                loaded: (t) {
                  List<Exchange> exchanges =
                      List.from(t.where((e) => e.eNameInstrument == instrument.eNameInstrument));

                  double amount = 0;

                  for (var element in exchanges) {
                    amount += element.count;
                  }

                  return CustomButton(
                      backgroundColor: amount > 0 ? null : Colors.grey,
                      onPressed: amount == 0
                          ? null
                          : () async {
                              return showModalBottomSheet<void>(
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (_) {
                                    return BlocProvider.value(
                                      value: BlocProvider.of<ExchangesCubit>(context),
                                      child: SellBottomSheet(
                                        instrument: instrument,
                                        buttonName: LocaleKeys.sell.tr(),
                                        amount: amount,
                                      ),
                                    );
                                  });
                            },
                      child: Text(LocaleKeys.sell.tr()));
                });
          },
        ),
      ),
    );
  }
}
