import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/widgets/custom_card.dart';

import '../../../constants/constants.dart';
import '../../../utilities/utilities.dart';
import '../cubit/job/freelance_job_cubit.dart';
import '../models/freelance_job/freelance_job_model.dart';

class FreelanceJobElement extends StatelessWidget {
  final FreelanceJob element;
  final int index;
  const FreelanceJobElement(this.element, this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomCard(
            child: Container(
              height: 50,
              padding: const EdgeInsets.all(4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyText2,
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
                      style: Theme.of(context).textTheme.bodyText2,
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
                      style: Theme.of(context).textTheme.bodyText2,
                      children: <TextSpan>[
                        TextSpan(
                          text: '${LocaleKeys.duration.tr()}: ',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: '${element.workTime}h/${element.leftWorkTime}h'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        CustomCard(
            child: Container(
          height: 50,
          width: 50,
          padding: const EdgeInsets.all(4.0),
          child: IconButton(
              onPressed: () => context.read<FreelanceJobCubit>().repeat(element),
              icon: FaIcon(
                element.repeat ? FontAwesomeIcons.repeat : FontAwesomeIcons.one,
                color: Colors.white,
              )),
        )),
        CustomCard(
            child: Container(
          height: 50,
          width: 50,
          padding: const EdgeInsets.all(4.0),
          child: IconButton(
              onPressed: () => context.read<FreelanceJobCubit>().remove(element.uid),
              icon: FaIcon(
                FontAwesomeIcons.trash,
                color: Colors.red[300]!.withOpacity(0.7),
              )),
        )),
      ],
    );
  }
}
