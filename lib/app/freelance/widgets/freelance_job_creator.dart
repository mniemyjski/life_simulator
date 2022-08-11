import 'package:auto_route/auto_route.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_simulator/utilities/utilities.dart';
import 'package:uuid/uuid.dart';

import '../../../constants/constants.dart';
import '../../../widgets/widgets.dart';
import '../../skills/cubit/skills_cubit.dart';
import '../../skills/models/skill_model.dart';
import '../cubit/job/freelance_job_cubit.dart';
import '../models/freelance_base/freelance_base.dart';
import '../models/freelance_job/freelance_job_model.dart';

class FreelanceJobCreator extends StatefulWidget {
  const FreelanceJobCreator({Key? key}) : super(key: key);

  @override
  State<FreelanceJobCreator> createState() => _FreelanceJobCreatorState();
}

class _FreelanceJobCreatorState extends State<FreelanceJobCreator> {
  late int duration = 30;
  late ETypeFreelance typeJob = ETypeFreelance.book;
  late List<Skill> req = _getList(typeJob);
  late TextEditingController controller;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    controller = TextEditingController(text: '');
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8, top: 4),
            child: Form(
              key: formKey,
              child: TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: LocaleKeys.name.tr(),
                  labelStyle: const TextStyle(color: Colors.white),
                  contentPadding: const EdgeInsets.all(12),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: const BorderSide(
                      color: Colors.white38,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
                controller: controller,
                validator: (v) {
                  if (v == null || v.isEmpty) {
                    return 'Can\'t be empty';
                  }
                  if (v.length < 4) {
                    return 'Too short';
                  }
                  return null;
                },
              ),
            ),
          ),
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
                items: (Enums.toList(ETypeFreelance.values) as List<String>)
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
                value: Enums.toText(typeJob),
                onChanged: (v) => setState(() {
                  typeJob = Enums.toEnum(v as String, ETypeFreelance.values);
                  req = _getList(typeJob);
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
                  value: duration.toDouble(),
                  activeColor: Colors.white70,
                  inactiveColor: Colors.white70,
                  min: 30,
                  max: 100,
                  divisions: 100,
                  onChanged: (double v) => setState(() => duration = v.toInt()),
                ),
              ),
              Text('${duration.toInt().toString()}h'),
            ],
          ),
          CustomButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  FreelanceJob freelanceWork = FreelanceJob(
                    id: const Uuid().v1(),
                    name: controller.text,
                    eTypeFreelance: typeJob,
                    fame: 0,
                    price: 0,
                    workTime: duration,
                    leftWorkTime: duration,
                    reqSkills: req,
                    userSkills: req,
                  );

                  context.read<FreelanceJobCubit>().add(freelanceWork);
                  context.router.pop();
                }
              },
              child: Text(
                LocaleKeys.create.tr(),
              ))
        ],
      ),
    );
  }

  List<Skill> _getList(ETypeFreelance selected) {
    switch (selected) {
      case ETypeFreelance.book:
        return [const Skill(name: ETypeSkills.communicativeness, lvl: 1)];
      case ETypeFreelance.course:
        return [const Skill(name: ETypeSkills.confidence, lvl: 1)];
      case ETypeFreelance.youtube:
        return [
          const Skill(name: ETypeSkills.communicativeness, lvl: 1),
          const Skill(name: ETypeSkills.confidence, lvl: 1),
        ];
      case ETypeFreelance.application:
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
                      TextSpan(text: element.lvl.toString()),
                    ],
                  ),
                ),
              ),
            ))
        .toList();
  }
}
