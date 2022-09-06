import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/constants.dart';
import '../../utilities/utilities.dart';
import '../../widgets/custom_drop_down_button.dart';
import '../database/cubit/database_cubit.dart';
import '../database/models/database.dart';
import '../game/widget/app_bar_stats.dart';
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
    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppBarStats(),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${LocaleKeys.materials.tr()}:',
              style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white),
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
                        onPressed: () {
                          context.read<LearningCubit>().add(list[index]);
                          context.router.pop();
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
    ));
  }
}
