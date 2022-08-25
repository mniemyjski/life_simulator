import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
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
  late int duration = 40;
  late int lvl = 1;
  late ETypeFreelance typeJob = ETypeFreelance.book;
  late List<Skill> req = _getList(typeJob, lvl);
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
      padding: MediaQuery.of(context).viewInsets,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<SkillsCubit, SkillsState>(
          builder: (context, state) {
            return state.maybeWhen(
                orElse: () => Container(),
                loaded: (skills) {
                  return Column(
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
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          '${LocaleKeys.level.tr()}:',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Slider(
                              value: lvl.toDouble(),
                              activeColor: Colors.white70,
                              inactiveColor: Colors.white70,
                              min: 1,
                              max: 10,
                              divisions: 10,
                              onChanged: (double v) {
                                setState(() {
                                  lvl = v.toInt();
                                  req = _getList(typeJob, lvl);
                                  calcDuration();
                                });
                              },
                            ),
                          ),
                          Text('${lvl.toInt()}'),
                        ],
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
                        child: Row(
                          children: [
                            //TODO change DropdownButtonHideUnderline to CustomDropButton
                            DropdownButtonHideUnderline(
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
                                  req = _getList(typeJob, lvl);
                                  calcDuration();
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
                            Card(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                              child: SizedBox(
                                height: 40,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: RichText(
                                      text: TextSpan(
                                        style: Theme.of(context).textTheme.bodyText1,
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '${LocaleKeys.duration.tr()}: ',
                                            style: const TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(text: '${duration}h'),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 4),
                        child: Text(
                          'Req:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0, bottom: 8),
                        child: BlocBuilder<SkillsCubit, SkillsState>(
                          builder: (context, state) {
                            return state.maybeWhen(
                              orElse: () => Container(),
                              loaded: (skills) {
                                return Wrap(
                                    children: _buildWidgetReq(reqSkills: req, userSkill: skills));
                              },
                            );
                          },
                        ),
                      ),
                      CustomButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              FreelanceJob freelanceWork = FreelanceJob(
                                id: const Uuid().v1(),
                                name: controller.text,
                                eTypeFreelance: typeJob,
                                workTime: duration,
                                leftWorkTime: duration,
                                reqSkills: req,
                                userSkills: skills,
                                level: lvl,
                              );

                              String? toast = context.read<FreelanceJobCubit>().add(freelanceWork);
                              if (toast != null) {
                                BotToast.showText(text: toast, align: const Alignment(0.1, 0.05));
                              } else {
                                context.router.pop();
                              }
                            }
                          },
                          child: Text(
                            LocaleKeys.create.tr(),
                          ))
                    ],
                  );
                });
          },
        ),
      ),
    );
  }

  List<Skill> _getList(ETypeFreelance selected, int lvl) {
    switch (selected) {
      case ETypeFreelance.book:
        return [
          Skill(name: ETypeSkills.communicativeness, lvl: lvl),
        ];
      case ETypeFreelance.course:
        return [
          Skill(name: ETypeSkills.confidence, lvl: lvl),
        ];
      case ETypeFreelance.youtube:
        return [
          Skill(name: ETypeSkills.communicativeness, lvl: lvl),
          Skill(name: ETypeSkills.confidence, lvl: lvl),
        ];
      case ETypeFreelance.application:
        return [
          Skill(name: ETypeSkills.programming, lvl: lvl),
        ];
    }
  }

  calcDuration() {
    switch (typeJob) {
      case ETypeFreelance.book:
        duration = (40 * lvl).toInt();
        break;
      case ETypeFreelance.course:
        duration = (40 * lvl).toInt();
        break;
      case ETypeFreelance.youtube:
        duration = (4 * lvl).toInt();
        break;
      case ETypeFreelance.application:
        duration = (40 * lvl).toInt();
        break;
    }
  }

  List<Widget> _buildWidgetReq({required List<Skill> reqSkills, required List<Skill> userSkill}) {
    return reqSkills.map((element) {
      Skill test = userSkill.firstWhere((e) => e.name == element.name);

      return Builder(builder: (context) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
              text: TextSpan(
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: test.lvl >= element.lvl ? Colors.green[600] : Colors.red),
                children: <TextSpan>[
                  TextSpan(
                      text: '${Enums.toText(element.name)}: ',
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: element.lvl.toString()),
                ],
              ),
            ),
          ),
        );
      });
    }).toList();
  }
}
