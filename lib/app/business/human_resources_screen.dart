import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/app/business/widgets/employee_element.dart';

import '../../constants/constants.dart';
import '../../constants/data/employee_data.dart';
import '../../utilities/utilities.dart';
import '../../widgets/widgets.dart';
import 'cubit/employees_list/employees_cubit.dart';
import 'models/employee/employee_model.dart';

class HumanResourcesScreen extends StatefulWidget implements AutoRouteWrapper {
  final EmployeesCubit blocProvider;
  final ETypeEmployees eTypeEmployees;

  const HumanResourcesScreen({Key? key, required this.blocProvider, required this.eTypeEmployees})
      : super(key: key);

  @override
  State<HumanResourcesScreen> createState() => _HumanResourcesScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: blocProvider,
      child: this,
    );
  }
}

class _HumanResourcesScreenState extends State<HumanResourcesScreen> {
  ETypeEmployees eTypeEmployees = ETypeEmployees.worker;
  final List<bool> _selected = <bool>[
    true,
    false,
    false,
    false,
    false,
  ];

  @override
  void initState() {
    eTypeEmployees = widget.eTypeEmployees;
    _changeMarket(eTypeEmployees.index);
    super.initState();
  }

  _changeMarket(int index) {
    setState(() {
      for (int i = 0; i < _selected.length; i++) {
        _selected[i] = i == index;
        eTypeEmployees = ETypeEmployees.values[index];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.humanResources.tr()),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 8),
          ToggleButtons(
            onPressed: (int index) => _changeMarket(index),
            borderRadius: const BorderRadius.all(Radius.circular(0)),
            selectedBorderColor: Colors.white70,
            selectedColor: Colors.white,
            fillColor: Theme.of(context).scaffoldBackgroundColor,
            color: Colors.white70,
            constraints: BoxConstraints(
                minWidth: (MediaQuery.of(context).size.width - 16) / 5, minHeight: 56),
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
                itemCount: EmployeeData.get(eTypeEmployees).length,
                itemBuilder: (context, index) {
                  final Employee element = EmployeeData.get(eTypeEmployees)[index];

                  return EmployeeElement(
                    employee: element,
                    icon: const FaIcon(FontAwesomeIcons.cartShopping),
                    onPressed: () {
                      context.read<EmployeesCubit>().addEmployee(element);
                      context.router.pop();
                    },
                  );
                }),
          ),
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
            const SizedBox(width: 56),
            const SizedBox(width: 56),
          ],
        ),
      ),
    );
  }
}
