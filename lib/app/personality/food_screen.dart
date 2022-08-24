import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/database/cubit/database_cubit.dart';
import 'package:life_simulator/app/game/widget/app_bar_stats.dart';
import 'package:life_simulator/app/personality/cubit/food/food_cubit.dart';
import 'package:life_simulator/app/personality/widgets/food/food_element.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
            children: [
              const AppBarStats(),
              BlocBuilder<FoodCubit, FoodState>(
                builder: (context, state) {
                  return state.maybeWhen(
                      orElse: () => Container(),
                      loaded: (chosenFood) {
                        return Expanded(
                          child: ListView.builder(
                              itemCount: context.watch<DatabaseCubit>().state.foodsDB.length,
                              itemBuilder: (context, index) {
                                return FoodElement(
                                  food: context.watch<DatabaseCubit>().state.foodsDB[index],
                                  chosen: chosenFood,
                                );
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
