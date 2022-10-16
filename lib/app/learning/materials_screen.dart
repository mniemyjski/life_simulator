import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/widgets/widgets.dart';

import '../../constants/constants.dart';
import '../../utilities/utilities.dart';
import '../database/cubit/database_cubit.dart';
import '../database/models/database.dart';
import '../game/widget/app_bar_game.dart';
import '../skills/models/skill_model.dart';
import 'cubit/learning_cubit.dart';
import 'models/learning_model.dart';
import 'widgets/learning_element.dart';

class MaterialsScreen extends StatefulWidget {
  const MaterialsScreen({Key? key}) : super(key: key);

  @override
  State<MaterialsScreen> createState() => _MaterialsScreenState();
}

class _MaterialsScreenState extends State<MaterialsScreen> {
  List<String> list = ['All', ...Enums.toList(ETypeSkills.values)];
  late String selected = list.first;

  List<Learning> _filtered(List<Learning> list) {
    return List.from(list.where((element) {
      if (selected == 'All') return true;
      return element.skillType == Enums.toEnum(selected, ETypeSkills.values);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBarGame(title: LocaleKeys.materials.tr()),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomDropDownButton(
              items: list,
              onChanged: (value) {
                setState(() {
                  selected = value;
                });
              },
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: BlocBuilder<DatabaseCubit, Database>(
                builder: (context, state) {
                  List<Learning> list = _filtered(state.learningsDB);

                  return ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return LearningElement(
                        element: list[index],
                        onPressed: () async {
                          var toast = context.read<LearningCubit>().add(list[index]);
                          if (toast != null) {
                            BotToast.showText(
                                text: toast.toString().tr(), align: const Alignment(0.1, 0.05));
                          } else {
                            context.router.pop();
                          }
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          )
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
          ],
        ),
      ),
    );
  }
}
