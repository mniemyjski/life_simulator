import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/freelance/cubit/job/freelance_job_cubit.dart';
import 'package:life_simulator/constants/constants.dart';

import '../../../utilities/utilities.dart';
import '../models/freelance_job/freelance_job_model.dart';

class FreelanceJobElement extends StatelessWidget {
  final FreelanceJob element;
  const FreelanceJobElement(this.element, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1!.color,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '${LocaleKeys.name.tr()}: ',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: element.name),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1!.color,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '${LocaleKeys.type.tr()}: ',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: Enums.toText(element.eTypeFreelance)),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1!.color,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '${LocaleKeys.duration.tr()}: ',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: '${element.workTime}h/${element.leftWorkTime}h (-0h)'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
            child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: IconButton(
              onPressed: () => context.read<FreelanceJobCubit>().remove(element.id),
              icon: FaIcon(
                FontAwesomeIcons.trash,
                color: Colors.red[900]!.withOpacity(0.7),
              )),
        )),
        Card(
            child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: IconButton(onPressed: () => null, icon: const FaIcon(Icons.remove)),
        )),
        Card(
            child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: IconButton(onPressed: () => null, icon: const FaIcon(Icons.add)),
        )),
      ],
    );
  }
}
