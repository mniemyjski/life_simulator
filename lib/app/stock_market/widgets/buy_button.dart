import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_simulator/utilities/utilities.dart';

import '../../../constants/constants.dart';
import '../../money/cubit/money_cubit.dart';
import '../models/instrument/instrument.dart';
import 'buy_bottom_sheet.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({
    Key? key,
    required this.instrument,
  }) : super(key: key);

  final Instrument instrument;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 4, right: 4.0),
        child: BlocBuilder<MoneyCubit, double>(
          builder: (context, state) {
            return ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: state > 0 ? null : MaterialStateProperty.all(Colors.grey),
                ),
                onPressed: state > 0
                    ? () async {
                        return showModalBottomSheet<void>(
                            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                            context: context,
                            builder: (BuildContext context) {
                              return BuyBottomSheet(
                                instrument: instrument,
                                buttonName: LocaleKeys.buy.tr(),
                                money: state,
                              );
                            });
                      }
                    : null,
                child: Text(LocaleKeys.buy.tr()));
          },
        ),
      ),
    );
  }
}
