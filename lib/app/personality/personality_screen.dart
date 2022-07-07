import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/game/widget/app_bar_stats.dart';
import 'package:life_simulator/config/routes/routes.gr.dart';
import 'package:life_simulator/constants/constants.dart';
import 'package:life_simulator/utilities/utilities.dart';
import 'package:life_simulator/widgets/widgets.dart';

import 'models/house/house_model.dart';

class PersonalityScreen extends StatelessWidget {
  const PersonalityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            AppBarStats(),
            // CustomDropDownList(
            //   title: 'Choose your meal:',
            //   list:
            //       CustomDropDownList.toSelectedListItem(context.watch<MealCubit>().toListString()),
            //   selected: context.watch<MealCubit>().state.maybeWhen(
            //         orElse: () => '',
            //         loaded: (meal) => meal.name,
            //       ),
            //   onChange: (value) => getIt<MealCubit>().change(value),
            // ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CustomButton(
                        onPressed: () =>
                            context.router.push(HouseRoute(eTypeHouse: ETypeHouse.rent)),
                        child: Text(LocaleKeys.rentHouse.tr())),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CustomButton(
                        onPressed: () =>
                            context.router.push(HouseRoute(eTypeHouse: ETypeHouse.buy)),
                        child: Text(LocaleKeys.buyHouse.tr())),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CustomButton(
                        onPressed: () => context.router.push(const CarRoute()),
                        child: Text(LocaleKeys.buyTransport.tr())),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CustomButton(
                        onPressed: () => context.router.push(const FoodsRoute()),
                        child: Text(LocaleKeys.food.tr())),
                  ),
                ),
              ],
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
        ),
      ),
    );
  }
}
