import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/custom_button.dart';

import '../../../constants/constants.dart';
import '../../money/cubit/money/money_cubit.dart';
import '../models/candle/candle.dart';
import '../models/instrument/instrument.dart';
import 'buy_bottom_sheet.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({
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
                                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return BuyBottomSheet(
                                      instrument: instrument,
                                      buttonName: LocaleKeys.buy.tr(),
                                      money: money,
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
