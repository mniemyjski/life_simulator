import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/database/cubit/database_cubit.dart';
import 'package:life_simulator/app/game/widget/app_bar_stats.dart';
import 'package:life_simulator/app/personality/cubit/house/house_cubit.dart';
import 'package:life_simulator/app/personality/models/house/house_model.dart';
import 'package:life_simulator/app/settings/cubit/dark_mode_cubit.dart';

class HouseScreen extends StatelessWidget {
  final ETypeHouse eTypeHouse;

  const HouseScreen({Key? key, required this.eTypeHouse}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            AppBarStats(),
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
                                      if (toast != null)
                                        BotToast.showText(text: toast, align: Alignment(0.1, 0.05));
                                    }
                                  });
                            }),
                      );
                    });
              },
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: FloatingActionButton(
            heroTag: null,
            onPressed: () => context.router.pop(),
            child: FaIcon(FontAwesomeIcons.arrowRotateLeft),
          ),
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
                          'Cost: ',
                          style: txtStyle.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '${element.cost.toString()}\$',
                          style: txtStyle,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Monthly: ',
                          style: txtStyle.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '${element.monthlyCost.toString()}\$',
                          style: txtStyle,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        'Bonuses: ',
                        style: txtStyle.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Row(
                        children: [
                          Text(
                            'Learn: ',
                            style: txtStyle.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${element.bonusToLearn.toString()}',
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
                            'Relax: ',
                            style: txtStyle.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${element.bonusToRelax.toString()}',
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
                            'Sleep: ',
                            style: txtStyle.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${element.bonusToSleep.toString()}',
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
                      color: owned || context.read<DarkModeCubit>().state
                          ? Colors.white
                          : Colors.black,
                    ))
              ],
            ),
          ));
    });
  }
}
