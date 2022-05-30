import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utilities/utilities.dart';
import '../../skills/models/skills_model.dart';
import '../models/learning_model.dart';

class LearningElement extends StatelessWidget {
  final Learning element;
  final IconData? iconData;
  final VoidCallback? onPressed;

  const LearningElement({
    Key? key,
    required this.element,
    this.iconData,
    this.onPressed,
  }) : super(key: key);

  String _transformSkillsToString(List<Skill> skills) {
    String result = '';

    skills.forEach((element) {
      result += '${Enums.toText(element.name)}, ';
    });

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  element.name,
                  style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Skills: ${_transformSkillsToString(element.skills)}',
                  style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color),
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Time: ${element.time}h',
                style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Cost: ${element.cost}\$',
                style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color),
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: onPressed,
          icon: FaIcon(iconData ?? FontAwesomeIcons.moneyBill),
        )
      ],
    ));
  }
}
