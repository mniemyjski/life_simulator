import 'package:flutter/material.dart';

import '../../../utilities/utilities.dart';
import '../../skills/models/skill_model.dart';

class SkillElement extends StatelessWidget {
  final Skill element;

  const SkillElement({Key? key, required this.element}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: '${element.exp.toString()}'),
            ],
          ),
        ),
      ),
    );
  }
}
