import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/app/freelance/services/freelance_services.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/custom_card.dart';

import '../../../constants/constants.dart';
import '../../../widgets/widgets.dart';
import '../../skills/cubit/skills_cubit.dart';
import '../../skills/models/skill_emb/skill_emb_model.dart';
import '../cubit/job/freelance_job_cubit.dart';
import '../models/freelance_job/freelance_job_model.dart';

class FreelanceJobSheet extends StatefulWidget {
  const FreelanceJobSheet({Key? key}) : super(key: key);

  @override
  State<FreelanceJobSheet> createState() => _FreelanceJobSheetState();
}

class _FreelanceJobSheetState extends State<FreelanceJobSheet> {
  late int lvl = 1;
  late ETypeFreelance typeJob = ETypeFreelance.book;

  late int duration = FreelanceServices.calcDuration(typeJob: typeJob, lvl: lvl);
  late List<SkillEmb> req = FreelanceServices.getList(selected: typeJob, lvl: lvl);

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
    return CustomSheetDesign(
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
                      child: Row(
                        children: [
                          Expanded(
                            child: Form(
                              key: formKey,
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                textCapitalization: TextCapitalization.sentences,
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
                                    return LocaleKeys.cantBeEmpty.tr();
                                  }
                                  if (v.length < 4) {
                                    return LocaleKeys.tooShort.tr();
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          CustomCard(
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      controller.text =
                                          "${faker.lorem.word().capitalize()} ${faker.lorem.word().capitalize()}";
                                    });
                                  },
                                  icon: const Icon(
                                    FontAwesomeIcons.shuffle,
                                    color: Colors.white,
                                  )))
                        ],
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
                                req = FreelanceServices.getList(selected: typeJob, lvl: lvl);
                                duration =
                                    FreelanceServices.calcDuration(typeJob: typeJob, lvl: lvl);
                              });
                            },
                          ),
                        ),
                        Text('${lvl.toInt()}'),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Text(
                        '${LocaleKeys.type.tr()}:',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Row(
                        children: [
                          CustomDropDownButton(
                              items: Enums.toList(ETypeFreelance.values),
                              onChanged: (v) => setState(() {
                                    typeJob = Enums.toEnum(v, ETypeFreelance.values);
                                    req = FreelanceServices.getList(selected: typeJob, lvl: lvl);
                                    duration =
                                        FreelanceServices.calcDuration(typeJob: typeJob, lvl: lvl);
                                  })),
                          CustomCard(
                            child: SizedBox(
                              height: 40,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: RichText(
                                    text: TextSpan(
                                      style: Theme.of(context).textTheme.bodyText2,
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
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Text(
                        '${LocaleKeys.requirements.tr()}:',
                        style: const TextStyle(fontWeight: FontWeight.bold),
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
                                  children: _buildWidgetReq(
                                      reqSkills: req,
                                      userSkill: skills.map((e) => e.toSkillEmb()).toList()));
                            },
                          );
                        },
                      ),
                    ),
                    CustomButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            FreelanceJob freelanceWork = FreelanceJob.builder(
                              name: controller.text,
                              eTypeFreelance: typeJob,
                              workTime: duration,
                              reqSkills: req,
                              userSkills: skills.map((e) => e.toSkillEmb()).toList(),
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
    );
  }

  List<Widget> _buildWidgetReq(
      {required List<SkillEmb> reqSkills, required List<SkillEmb> userSkill}) {
    return reqSkills.map((element) {
      SkillEmb test = userSkill.firstWhere((e) => e.name == element.name);

      return Builder(builder: (context) {
        return CustomCard(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
              text: TextSpan(
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: test.lvl >= element.lvl ? Colors.green[300] : Colors.red[300]),
                children: <TextSpan>[
                  TextSpan(
                      text: '${Enums.toText(element.name).tr()}: ',
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
