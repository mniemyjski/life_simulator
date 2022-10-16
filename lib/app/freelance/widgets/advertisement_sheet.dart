import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/app/freelance/cubit/fame/fame_cubit.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../constants/constants.dart';
import '../../../widgets/widgets.dart';

class AdvertisementSheet extends StatefulWidget {
  final double money;
  const AdvertisementSheet(this.money, {Key? key}) : super(key: key);

  @override
  State<AdvertisementSheet> createState() => _AdvertisementSheetState();
}

class _AdvertisementSheetState extends State<AdvertisementSheet> {
  int value = 1;

  @override
  Widget build(BuildContext context) {
    return CustomSheetDesign(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${LocaleKeys.advertisement.tr()}:',
                  style:
                      Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Slider(
                        value: value.toDouble(),
                        min: 1,
                        max: widget.money.roundToDouble(),
                        divisions: widget.money.toInt(),
                        onChanged: (double v) => setState(() => value = v.toInt()),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${LocaleKeys.cost.tr()}: ${value.toDouble().toMoney()}',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '${LocaleKeys.fame.tr()}: ${(value * 10).toDouble().toExp()}',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
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
    );
  }
}
