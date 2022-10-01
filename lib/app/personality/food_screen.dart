import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/widgets.dart';

import '../../constants/constants.dart';
import '../database/cubit/database_cubit.dart';
import 'cubit/food/food_cubit.dart';
import 'widgets/food/food_element.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.chooseFood.tr()),
        automaticallyImplyLeading: false,
      ),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              heroTag: null,
              onPressed: () => context.router.pop(),
              child: const FaIcon(FontAwesomeIcons.arrowRotateLeft),
            ),
            const SizedBox(width: 56),
            const SizedBox(width: 56),
          ],
        ),
      ),
    );
  }
}
