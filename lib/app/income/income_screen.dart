import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/date/widgets/next_day.dart';
import 'package:life_simulator/app/game/widget/app_bar_stats.dart';
import 'package:life_simulator/app/income/cubit/income_cubit.dart';

import '../../utilities/utilities.dart';
import 'models/income_model.dart';

class IncomeScreen extends StatelessWidget {
  const IncomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          const AppBarStats(),
          context.watch<IncomeCubit>().state.maybeWhen(
              orElse: () => Container(),
              loaded: (incomes) {
                if (incomes.length == 0) {
                  return const Expanded(
                    child: Center(child: Text("You don't have any income yet!")),
                  );
                }

                double _revenues = 0;
                double _expenses = 0;
                List<Income> _revenuesList = [];
                List<Income> _expensesList = [];

                incomes.forEach((element) {
                  if (element.typeIncome == ETypeIncome.revenue) {
                    _revenues += element.monthlyIncome();
                    _revenuesList.add(element);
                  }
                  if (element.typeIncome == ETypeIncome.expense) {
                    _expenses += element.monthlyIncome();
                    _expensesList.add(element);
                  }
                });

                return Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Revenue: ${_revenues.toMoney()}',
                                  style: TextStyle(
                                      color: Theme.of(context).textTheme.bodyText2!.color),
                                ),
                              ),
                              color: Colors.green.withOpacity(0.6),
                            ),
                          ),
                          Expanded(
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Netto: ${(_revenues + _expenses).toMoney()}',
                                  style: TextStyle(
                                      color: Theme.of(context).textTheme.bodyText1!.color),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Expense: ${_expenses.toMoney()}',
                                  style: TextStyle(
                                      color: Theme.of(context).textTheme.bodyText2!.color),
                                ),
                              ),
                              color: Colors.red.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: ListView.builder(
                                itemCount: _revenuesList.length,
                                itemBuilder: (context, index) {
                                  Income element = _revenuesList[index];

                                  return _elementList(element);
                                },
                              ),
                            ),
                            Expanded(
                              child: ListView.builder(
                                itemCount: _expensesList.length,
                                itemBuilder: (context, index) {
                                  Income element = _expensesList[index];

                                  return _elementList(element);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
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
            const NextDayButton(),
          ],
        ),
      ),
    ));
  }

  Builder _elementList(Income element) {
    return Builder(builder: (context) {
      return Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      Text(
                        '${Enums.toText(element.source)}:',
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Value: ',
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    element.value.toMoney(),
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Monthly: ',
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    element.monthlyIncome().toMoney(),
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Interval: ',
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    element.frequencyToString(),
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Next payment:',
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    element.next!.onlyDateToString(),
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
