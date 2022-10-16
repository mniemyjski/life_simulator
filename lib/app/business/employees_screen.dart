import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/app/business/widgets/employee_element.dart';
import 'package:richeable/app/game/widget/app_bar_game.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../config/injectable/injection.dart';
import '../../config/routes/routes.gr.dart';
import '../../constants/constants.dart';
import '../../widgets/widgets.dart';
import 'cubit/employees_list/employees_cubit.dart';
import 'models/employee/employee_model.dart';

class EmployeesScreen extends StatefulWidget {
  final int businessId;
  const EmployeesScreen({Key? key, required this.businessId}) : super(key: key);

  @override
  State<EmployeesScreen> createState() => _EmployeesScreenState();
}

class _EmployeesScreenState extends State<EmployeesScreen> {
  ETypeEmployees eTypeEmployees = ETypeEmployees.worker;
  final List<bool> _selected = <bool>[
    true,
    false,
    false,
    false,
    false,
  ];

  _change(int index) {
    setState(() {
      for (int i = 0; i < _selected.length; i++) {
        _selected[i] = i == index;
        eTypeEmployees = ETypeEmployees.values[index];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<EmployeesCubit>(param1: widget.businessId),
      child: Builder(builder: (context) {
        return CustomScaffold(
          appBar: AppBarGame(
            title: LocaleKeys.employees.tr(),
            showTimeSpend: false,
          ),
          body: BlocBuilder<EmployeesCubit, EmployeesState>(
            builder: (context, state) {
              return state.maybeWhen(
                  orElse: () => Container(),
                  loaded: (employees) {
                    final list = List.of(
                        employees.where((element) => element.eTypeEmployees == eTypeEmployees));

                    return Column(
                      children: [
                        ToggleButtons(
                          onPressed: (int index) => _change(index),
                          borderRadius: const BorderRadius.all(Radius.circular(0)),
                          selectedBorderColor: Colors.white70,
                          selectedColor: Colors.white,
                          fillColor: Theme.of(context).scaffoldBackgroundColor,
                          color: Colors.white70,
                          constraints: BoxConstraints(
                              minWidth: (MediaQuery.of(context).size.width - 8) / 5, minHeight: 56),
                          isSelected: _selected,
                          children: [
                            Text(Enums.toText(ETypeEmployees.worker).tr()),
                            Text(Enums.toText(ETypeEmployees.scientist).tr()),
                            Text(Enums.toText(ETypeEmployees.accountant).tr()),
                            Text(Enums.toText(ETypeEmployees.manager).tr()),
                            Text(Enums.toText(ETypeEmployees.marketer).tr()),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 4, right: 4),
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                              itemCount: list.length,
                              itemBuilder: (context, index) {
                                final element = list[index];

                                return EmployeeElement(
                                  icon: Icon(
                                    FontAwesomeIcons.trash,
                                    color: Colors.red[800],
                                  ),
                                  employee: element,
                                  onPressed: () =>
                                      context.read<EmployeesCubit>().firedEmployee(element),
                                );
                              }),
                        ),
                        const SizedBox(height: 80),
                      ],
                    );
                  });
            },
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                FloatingActionButton(
                  heroTag: null,
                  onPressed: () => context.router.pop(),
                  child: const FaIcon(FontAwesomeIcons.arrowRotateLeft),
                ),
                const SizedBox(width: 56),
                FloatingActionButton(
                  heroTag: null,
                  onPressed: () {
                    context.router.push(HumanResourcesRoute(
                      blocProvider: BlocProvider.of<EmployeesCubit>(context),
                      eTypeEmployees: eTypeEmployees,
                    ));
                  },
                  child: const FaIcon(FontAwesomeIcons.plus),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
