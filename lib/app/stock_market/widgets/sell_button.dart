import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../constants/constants.dart';
import '../cubit/exchanges/exchanges_cubit.dart';
import '../models/exchange/exchange.dart';
import '../models/instrument/instrument.dart';
import 'sell_bottom_sheet.dart';

class SellButton extends StatelessWidget {
  const SellButton({
    Key? key,
    required this.instrument,
  }) : super(key: key);

  final Instrument instrument;

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
                  List<Exchange> transactions =
                      List.from(t.where((e) => e.instrument.id == instrument.id));

                  double amount = 0;

                  for (var element in transactions) {
                    amount += element.count;
                  }

                  return ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: amount > 0 ? null : MaterialStateProperty.all(Colors.grey),
                      ),
                      onPressed: amount == 0
                          ? null
                          : () async {
                              return showModalBottomSheet<void>(
                                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return SellBottomSheet(
                                      instrument: instrument,
                                      buttonName: LocaleKeys.sell.tr(),
                                      amount: amount,
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
