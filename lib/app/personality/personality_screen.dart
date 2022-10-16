import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/widgets.dart';

import '../../constants/constants.dart';
import '../game/widget/app_bar_game.dart';
import '../skills/cubit/skills_cubit.dart';
import 'widgets/personality/personality_menu.dart';
import 'widgets/personality/personality_skill_element.dart';

class PersonalityScreen extends StatefulWidget {
  const PersonalityScreen({Key? key}) : super(key: key);

  @override
  State<PersonalityScreen> createState() => _PersonalityScreenState();
}

class _PersonalityScreenState extends State<PersonalityScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBarGame(title: LocaleKeys.skills.tr()),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: BlocBuilder<SkillsCubit, SkillsState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => Container(),
                  loaded: (skills) {
                    return ListView.builder(
                        itemCount: skills.length,
                        itemBuilder: (context, i) {
                          return PersonalitySkillElement(element: skills[i]);
                        });
                    // return Wrap(children: list);
                  },
                );
              },
            ),
          ),
          const SizedBox(
            height: 85,
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const PersonalityMenu(),
    );
  }
}
