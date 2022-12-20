import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/app/business/cubit/human_resources/human_resources_cubit.dart';
import 'package:richeable/app/business/widgets/employee_element.dart';
import 'package:richeable/config/injectable/injection.dart';

import '../../constants/constants.dart';
import '../../constants/data/employee_data.dart';
import '../../utilities/utilities.dart';
import '../../widgets/widgets.dart';
import 'models/employee/employee_model.dart';

class HumanResourcesScreen extends StatefulWidget {
  final ETypeEmployees eTypeEmployees;
  final int businessId;

  const HumanResourcesScreen({Key? key, required this.eTypeEmployees, required this.businessId})
      : super(key: key);

  @override
  State<HumanResourcesScreen> createState() => _HumanResourcesScreenState();
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
    return BlocProvider(
      create: (context) => getIt<HumanResourcesCubit>(param1: widget.businessId),
      child: CustomScaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.humanResources.tr()),
          automaticallyImplyLeading: false,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
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
                      icon: const FaIcon(
                        FontAwesomeIcons.cartShopping,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        context.read<HumanResourcesCubit>().addEmployee(element);
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
      ),
    );
  }
}
