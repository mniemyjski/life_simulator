import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/game/widget/app_bar_stats.dart';
import 'package:life_simulator/config/routes/routes.gr.dart';
import 'package:life_simulator/constants/constants.dart';
import 'package:life_simulator/utilities/utilities.dart';
import 'package:life_simulator/widgets/widgets.dart';

import '../skills/cubit/skills_cubit.dart';
import '../skills/models/skill_model.dart';
import 'models/house/house_model.dart';

class PersonalityScreen extends StatelessWidget {
  const PersonalityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppBarStats(),
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
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Skills:',
                style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white),
              ),
            ),
            Expanded(
              child: BlocBuilder<SkillsCubit, SkillsState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => Container(),
                    loaded: (skills) {
                      return ListView.builder(
                          itemCount: skills.length,
                          itemBuilder: (context, i) {
                            Skill element = skills[i];

                            return Card(
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        style: TextStyle(
                                          color: Theme.of(context).textTheme.bodyText1!.color,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: '${Enums.toText(element.name).tr()}: ',
                                              style: const TextStyle(fontWeight: FontWeight.bold)),
                                          TextSpan(text: '${element.lvl.toString()} lvl'),
                                        ],
                                      ),
                                    ),
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Text(
                                          '${(element.getPercentToNextLvl() * 100).toInt()}%',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(fontSize: 10),
                                        ),
                                        CircularProgressIndicator(
                                          backgroundColor: Colors.grey[400],
                                          value: element.getPercentToNextLvl(),
                                          strokeWidth: 3,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                      // return Wrap(children: list);
                    },
                  );
                },
              ),
            ),
            SizedBox(
              height: 85,
            )
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
