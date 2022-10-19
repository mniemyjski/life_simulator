import 'package:flutter/material.dart';
import 'package:richeable/widgets/custom_card.dart';

import '../../../../constants/constants.dart';
import '../../../../utilities/utilities.dart';
import '../../../skills/models/skill/skill_model.dart';

class PersonalitySkillElement extends StatelessWidget {
  const PersonalitySkillElement({
    Key? key,
    required this.element,
  }) : super(key: key);

  final Skill element;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
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
                    style: Theme.of(context).textTheme.bodyText2,
                    children: <TextSpan>[
                      TextSpan(
                          text: '${Enums.toText(element.name).tr()}: ',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: '${element.lvl.toString()} lvl'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyText2,
                    children: <TextSpan>[
                      TextSpan(
                          text: '${LocaleKeys.exp.tr()}: ',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: element.exp.toInt().toString()),
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Text(
                  '${(element.getPercentToNextLvl() * 100).toInt()}%',
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 10),
                ),
                Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    value: element.getPercentToNextLvl(),
                    strokeWidth: 3,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
