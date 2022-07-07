import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/database/cubit/database_cubit.dart';
import 'package:life_simulator/app/game/widget/app_bar_stats.dart';
import 'package:life_simulator/app/personality/cubit/foods/foods_cubit.dart';
import 'package:life_simulator/utilities/utilities.dart';

import '../../constants/constants.dart';
import 'models/food/food_model.dart';

class FoodsScreen extends StatelessWidget {
  const FoodsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
            children: [
              const AppBarStats(),
              BlocBuilder<FoodsCubit, FoodsState>(
                builder: (context, state) {
                  return state.maybeWhen(
                      orElse: () => Container(),
                      loaded: (food) {
                        return Expanded(
                          child: ListView.builder(
                              itemCount: context.watch<DatabaseCubit>().state.foodsDB.length,
                              itemBuilder: (context, index) {
                                final Food element =
                                    context.watch<DatabaseCubit>().state.foodsDB[index];

                                TextStyle txtStyle = food.name == element.name
                                    ? TextStyle(
                                        color: Theme.of(context).textTheme.bodyText2?.color ??
                                            Colors.white,
                                        fontSize: 10)
                                    : TextStyle(
                                        color: Theme.of(context).textTheme.bodyText1?.color ??
                                            Colors.black,
                                        fontSize: 10);

                                return Card(
                                    color: food.name == element.name
                                        ? Theme.of(context).primaryColor
                                        : null,
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              RichText(
                                                text: TextSpan(
                                                  style: txtStyle.copyWith(
                                                      fontWeight: FontWeight.bold),
                                                  children: <TextSpan>[
                                                    TextSpan(text: element.name),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 8),
                                                child: Text(
                                                  'Bonuses: ',
                                                  style: txtStyle.copyWith(
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 8),
                                                child: RichText(
                                                  text: TextSpan(
                                                    style: txtStyle,
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text: '${LocaleKeys.relax.tr()}: ',
                                                        style: txtStyle.copyWith(
                                                            fontWeight: FontWeight.bold),
                                                      ),
                                                      TextSpan(text: '${element.bonusToRelax}')
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 8),
                                                child: RichText(
                                                  text: TextSpan(
                                                    style: txtStyle,
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text: '${LocaleKeys.sleep.tr()}: ',
                                                        style: txtStyle.copyWith(
                                                            fontWeight: FontWeight.bold),
                                                      ),
                                                      TextSpan(text: '${element.bonusToSleep}')
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 8),
                                                child: RichText(
                                                  text: TextSpan(
                                                    style: txtStyle,
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text: '${LocaleKeys.learn.tr()}: ',
                                                        style: txtStyle.copyWith(
                                                            fontWeight: FontWeight.bold),
                                                      ),
                                                      TextSpan(text: '${element.bonusToLearn}')
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 8.0),
                                                child: RichText(
                                                  text: TextSpan(
                                                    style: txtStyle,
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text: '${LocaleKeys.cost.tr()}: ',
                                                        style: txtStyle.copyWith(
                                                            fontWeight: FontWeight.bold),
                                                      ),
                                                      TextSpan(text: '${element.cost.toMoney()}')
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          if (food.name != element.name)
                                            IconButton(
                                              onPressed: () =>
                                                  context.read<FoodsCubit>().change(element),
                                              icon: const FaIcon(FontAwesomeIcons.plus),
                                            )
                                        ],
                                      ),
                                    ));
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
              child: const FaIcon(FontAwesomeIcons.arrowRotateLeft),
            ),
          )),
    );
  }
}
