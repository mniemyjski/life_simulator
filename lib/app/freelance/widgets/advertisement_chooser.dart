import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/app/freelance/cubit/fame/fame_cubit.dart';
import 'package:richeable/app/money/cubit/money_cubit.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../constants/constants.dart';
import '../../../widgets/widgets.dart';

class AdvertisementChooser extends StatefulWidget {
  const AdvertisementChooser({Key? key}) : super(key: key);

  @override
  State<AdvertisementChooser> createState() => _AdvertisementChooserState();
}

class _AdvertisementChooserState extends State<AdvertisementChooser> {
  int value = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.5),
      padding: MediaQuery.of(context).viewInsets,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<MoneyCubit, double>(
              builder: (context, state) {
                if (state < 10) {
                  context.router.pop();
                  BotToast.showText(
                      text: LocaleKeys.notEnoughMoney.tr(), align: const Alignment(0.1, 0.05));
                }

                return Card(
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${LocaleKeys.advertisement.tr()}:',
                          style: TextStyle(
                              color: Theme.of(context).textTheme.bodyText1!.color,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Slider(
                                value: value.toDouble(),
                                min: 1,
                                max: (state).roundToDouble(),
                                divisions: state.toInt(),
                                onChanged: (double v) => setState(() => value = v.toInt()),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${LocaleKeys.cost.tr()}: ${value.toDouble().toMoney()}',
                                  style: TextStyle(
                                      color: Theme.of(context).textTheme.bodyText1!.color,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '${LocaleKeys.fame.tr()}: ${value * 10}',
                                  style: TextStyle(
                                      color: Theme.of(context).textTheme.bodyText1!.color,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: CustomButton(
                  onPressed: () {
                    context.read<FameCubit>().buyAdv(money: value.toDouble(), fame: value * 10);
                    context.router.pop();
                  },
                  child: Text(
                    LocaleKeys.buy.tr(),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
