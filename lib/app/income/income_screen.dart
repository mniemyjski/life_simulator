import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/app_bar/app_bar_stats.dart';
import 'package:life_simulator/app/income/cubit/income_cubit.dart';

import '../../utilities/utilities.dart';
import '../date/cubit/date_cubit.dart';
import 'models/income_model.dart';

class IncomeScreen extends StatelessWidget {
  const IncomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          AppBarStats(),
          context.watch<IncomeCubit>().state.maybeWhen(
              orElse: () => Container(),
              loaded: (incomes) {
                if (incomes.length == 0)
                  return Expanded(
                    child: Center(child: Text("You don't have any income yet!")),
                  );

                int _revenues = 0;
                int _expenses = 0;
                List<Income> _revenuesList = [];
                List<Income> _expensesList = [];

                incomes.forEach((element) {
                  if (element.typeIncome == ETypeIncome.revenue) {
                    _revenues += (element.value / element.interval * 30).toInt();
                    _revenuesList.add(element);
                  }
                  if (element.typeIncome == ETypeIncome.expense) {
                    _expenses += (element.value / element.interval * 30).toInt();
                    _expensesList.add(element);
                  }
                });

                return Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Card(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Revenue: ${_revenues.toString()}\$',
                                style:
                                    TextStyle(color: Theme.of(context).textTheme.bodyText1!.color),
                              ),
                            )),
                            Expanded(
                              child: ListView.builder(
                                itemCount: _revenuesList.length,
                                itemBuilder: (context, index) {
                                  Income element = _revenuesList[index];

                                  return _elementList(element);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Card(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Expense: ${_expenses.toString()}\$',
                                style:
                                    TextStyle(color: Theme.of(context).textTheme.bodyText1!.color),
                              ),
                            )),
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
              child: FaIcon(FontAwesomeIcons.arrowRotateLeft),
            ),
            FloatingActionButton(
              onPressed: () => context.read<DateCubit>().nextDay(),
              child: FaIcon(FontAwesomeIcons.hourglass),
            )
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
                    '${element.value}\$',
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
                    '${(element.value / element.interval * 30).toInt()}\$',
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
                    '${element.interval}',
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Time to left: ',
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${element.timeLeft}',
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
