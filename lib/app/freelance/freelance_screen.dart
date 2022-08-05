import 'package:auto_route/auto_route.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/date/widgets/next_day.dart';
import 'package:life_simulator/app/freelance/models/freelance_job/freelance_job.dart';
import 'package:life_simulator/app/game/widget/app_bar_stats.dart';
import 'package:life_simulator/utilities/utilities.dart';

import '../../constants/constants.dart';
import '../../widgets/widgets.dart';
import '../skills/cubit/skills_cubit.dart';
import '../skills/models/skill_model.dart';

class FreelanceScreen extends StatelessWidget {
  const FreelanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const AppBarStats(),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'Fame',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '0',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
            ),
            Container(),
          ],
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
              const NextDayButton(),
              FloatingActionButton(
                heroTag: null,
                onPressed: () => _bottomWidget(context),
                child: const FaIcon(FontAwesomeIcons.plus),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _bottomWidget(BuildContext context) {
    return showModalBottomSheet<void>(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      context: context,
      builder: (BuildContext context) {
        double value = 30;
        ETypeWork selected = ETypeWork.book;
        List<Skill> req = _getList(selected);

        return StatefulBuilder(builder: (context, setState) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 4),
                  child: Text(
                    'Type:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      hint: Text(
                        'Select Item',
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).hintColor,
                        ),
                      ),
                      items: (Enums.toList(ETypeWork.values) as List<String>)
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ))
                          .toList(),
                      value: Enums.toText(selected),
                      onChanged: (v) => setState(() {
                        selected = Enums.toEnum(v as String, ETypeWork.values);
                        req = _getList(selected);
                      }),
                      buttonHeight: 40,
                      buttonWidth: 140,
                      itemHeight: 40,
                      buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                      buttonDecoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 4, top: 8),
                  child: Text(
                    'Req:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: BlocBuilder<SkillsCubit, SkillsState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () => Container(),
                        loaded: (skills) {
                          return Wrap(children: _buildWidgetReq(req, context));
                        },
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    '${LocaleKeys.duration.tr()}:',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Slider(
                        value: value,
                        activeColor: Colors.white70,
                        inactiveColor: Colors.white70,
                        min: 30,
                        max: 100,
                        divisions: 100,
                        onChanged: (double v) => setState(() => value = v),
                      ),
                    ),
                    Text('${value.toInt().toString()}h'),
                  ],
                ),
                CustomButton(
                    onPressed: () {},
                    child: Text(
                      LocaleKeys.create.tr(),
                    ))
              ],
            ),
          );
        });
      },
    );
  }

  List<Skill> _getList(ETypeWork selected) {
    switch (selected) {
      case ETypeWork.book:
        return [const Skill(name: ETypeSkills.communicativeness, lvl: 1)];
      case ETypeWork.course:
        return [const Skill(name: ETypeSkills.confidence, lvl: 1)];
      case ETypeWork.youtube:
        return [
          const Skill(name: ETypeSkills.communicativeness, lvl: 1),
          const Skill(name: ETypeSkills.confidence, lvl: 1),
        ];
      case ETypeWork.application:
        return [const Skill(name: ETypeSkills.programming, lvl: 1)];
    }
  }

  List<Widget> _buildWidgetReq(List<Skill> reqApp, BuildContext context) {
    return reqApp
        .map((element) => Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: '${Enums.toText(element.name)}: ',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: element.exp.toString()),
                    ],
                  ),
                ),
              ),
            ))
        .toList();
  }
}
