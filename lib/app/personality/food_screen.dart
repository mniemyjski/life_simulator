import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_simulator/app/database/cubit/database_cubit.dart';
import 'package:life_simulator/app/personality/cubit/food/food_cubit.dart';
import 'package:life_simulator/app/personality/widgets/food/food_element.dart';
import 'package:life_simulator/utilities/utilities.dart';

import '../../constants/constants.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text(LocaleKeys.buyTransport.tr())),
        body: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            children: [
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
        ),
      ),
    );
  }
}
