import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/app/stock_market/cubit/exchanges/exchanges_cubit.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/custom_button.dart';

import '../../../constants/constants.dart';
import '../../money/cubit/money/money_cubit.dart';
import '../models/candle/candle.dart';
import '../models/instrument/instrument.dart';
import 'buy_bottom_sheet.dart';

class BuyButton extends StatelessWidget {
  final Instrument instrument;
  final Candle lastCandle;

  const BuyButton({
    Key? key,
    required this.instrument,
    required this.lastCandle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 4, right: 4.0),
        child: BlocBuilder<MoneyCubit, MoneyState>(
          builder: (context, state) {
            return state.maybeWhen(
                orElse: () => Container(),
                loaded: (money) {
                  return CustomButton(
                      backgroundColor: money > 0 ? null : Colors.grey,
                      onPressed: money > 0
                          ? () async {
                              return showModalBottomSheet<void>(
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (_) {
                                    return BlocProvider.value(
                                      value: BlocProvider.of<ExchangesCubit>(context),
                                      child: BuyBottomSheet(
                                        instrument: instrument,
                                        buttonName: LocaleKeys.buy.tr(),
                                        money: money,
                                      ),
                                    );
                                  });
                            }
                          : null,
                      child: Text(LocaleKeys.buy.tr()));
                });
          },
        ),
      ),
    );
  }
}
