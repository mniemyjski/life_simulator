import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/utilities/utilities.dart';

import '../../../../constants/constants.dart';
import '../../cubit/foods/foods_cubit.dart';
import '../../models/food/food_model.dart';

class FoodElement extends StatelessWidget {
  final Food food;
  final Food chosen;
  const FoodElement({Key? key, required this.food, required this.chosen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle txtStyle = food.name == chosen.name
        ? TextStyle(
            color: Theme.of(context).textTheme.bodyText2?.color ?? Colors.white, fontSize: 10)
        : TextStyle(
            color: Theme.of(context).textTheme.bodyText1?.color ?? Colors.black, fontSize: 10);

    return Card(
        color: food.name == chosen.name ? Theme.of(context).primaryColor : null,
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
                      style: txtStyle.copyWith(fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(text: chosen.name),
                      ],
                    ),
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
                    child: RichText(
                      text: TextSpan(
                        style: txtStyle,
                        children: <TextSpan>[
                          TextSpan(
                            text: '${LocaleKeys.relax.tr()}: ',
                            style: txtStyle.copyWith(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: '${chosen.bonusToRelax}')
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
                            style: txtStyle.copyWith(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: '${chosen.bonusToSleep}')
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
                            style: txtStyle.copyWith(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: '${chosen.bonusToLearn}')
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
                            style: txtStyle.copyWith(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: '${chosen.cost.toMoney()}')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              if (chosen.name != food.name)
                IconButton(
                  onPressed: () => context.read<FoodsCubit>().change(food),
                  icon: const FaIcon(FontAwesomeIcons.plus),
                )
            ],
          ),
        ));
  }
}
