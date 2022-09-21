import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/widgets.dart';

import '../../constants/constants.dart';
import '../database/cubit/database_cubit.dart';
import 'cubit/house/house_cubit.dart';
import 'models/house/house_model.dart';

class HouseScreen extends StatelessWidget {
  final ETypeHouse eTypeHouse;

  const HouseScreen({Key? key, required this.eTypeHouse}) : super(key: key);

  String _getTitleName() {
    switch (eTypeHouse) {
      case ETypeHouse.rent:
        return LocaleKeys.rentHouse.tr();
      case ETypeHouse.buy:
        return LocaleKeys.buyHouse.tr();
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(title: Text(_getTitleName())),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          children: [
            BlocBuilder<HouseCubit, HouseState>(
              builder: (context, state) {
                return state.maybeWhen(
                    orElse: () => Container(),
                    loaded: (house) {
                      final List<House> list = context
                          .watch<DatabaseCubit>()
                          .state
                          .housesDB
                          .where((element) => element.eTypeHouse == eTypeHouse)
                          .toList();

                      return Expanded(
                        child: ListView.builder(
                            itemCount: list.length,
                            itemBuilder: (context, index) {
                              final element = list[index];
                              final bool owned = element.id == (house?.id ?? 'xyz');

                              return _elementListView(
                                  element: element,
                                  owned: owned,
                                  onPressed: () async {
                                    if (owned) {
                                      context.read<HouseCubit>().sell();
                                    } else {
                                      var toast =
                                          await context.read<HouseCubit>().getHouse(element);
                                      if (toast != null) {
                                        BotToast.showText(
                                            text: toast, align: const Alignment(0.1, 0.05));
                                      }
                                    }
                                  });
                            }),
                      );
                    });
              },
            ),
          ],
        ),
      ),
    );
  }

  Builder _elementListView({required House element, required bool owned, VoidCallback? onPressed}) {
    return Builder(builder: (context) {
      TextStyle txtStyle = owned
          ? TextStyle(color: Theme.of(context).textTheme.bodyText2?.color ?? Colors.white)
          : TextStyle(color: Theme.of(context).textTheme.bodyText1?.color ?? Colors.black);

      return Card(
          color: owned ? Theme.of(context).primaryColor : null,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      element.name,
                      style: txtStyle,
                    ),
                    Row(
                      children: [
                        Text(
                          '${LocaleKeys.cost.tr()}: ',
                          style: txtStyle.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '${element.cost.toMoney()}\$',
                          style: txtStyle,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '${LocaleKeys.monthly.tr()}: ',
                          style: txtStyle.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '${element.monthlyCost.toMoney()}\$',
                          style: txtStyle,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        '${LocaleKeys.bonuses.tr()}: ',
                        style: txtStyle.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Row(
                        children: [
                          Text(
                            '${LocaleKeys.learn.tr()}: ',
                            style: txtStyle.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            element.bonusToLearn.toString(),
                            style: txtStyle,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Row(
                        children: [
                          Text(
                            '${LocaleKeys.relax.tr()}: ',
                            style: txtStyle.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            element.bonusToRelax.toString(),
                            style: txtStyle,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Row(
                        children: [
                          Text(
                            '${LocaleKeys.sleep.tr()}: ',
                            style: txtStyle.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            element.bonusToSleep.toString(),
                            style: txtStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: onPressed,
                    icon: FaIcon(
                      owned ? FontAwesomeIcons.minus : FontAwesomeIcons.plus,
                      color: owned ? Colors.white : Colors.black,
                    ))
              ],
            ),
          ));
    });
  }
}
