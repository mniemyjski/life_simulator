import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/widgets/widgets.dart';

import '../../constants/constants.dart';
import '../../utilities/utilities.dart';
import 'cubit/income/income_cubit.dart';
import 'models/income/income_model.dart';

class IncomeScreen extends StatelessWidget {
  const IncomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.income.tr()),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          children: [
            context.watch<IncomeCubit>().state.maybeWhen(
                orElse: () => Container(),
                loaded: (incomes) {
                  if (incomes.isEmpty) {
                    return const Expanded(
                      child: Center(child: Text("You don't have any income yet!")),
                    );
                  }

                  double revenues = 0;
                  double expenses = 0;
                  List<Income> revenuesList = [];
                  List<Income> expensesList = [];

                  for (var element in incomes) {
                    if (element.typeIncome == ETypeIncome.revenue) {
                      revenues += element.monthlyIncome();
                      revenuesList.add(element);
                    }
                    if (element.typeIncome == ETypeIncome.expense) {
                      expenses += element.monthlyIncome();
                      expensesList.add(element);
                    }
                  }

                  return Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Card(
                                color: Colors.green.withOpacity(0.6),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '${LocaleKeys.revenue.tr()}: ${revenues.toMoney()}',
                                    style: TextStyle(
                                        color: Theme.of(context).textTheme.bodyText2!.color),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '${LocaleKeys.net.tr()}: ${(revenues + expenses).toMoney()}',
                                    style: TextStyle(
                                        color: Theme.of(context).textTheme.bodyText1!.color),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Card(
                                color: Colors.red.withOpacity(0.6),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '${LocaleKeys.expense.tr()}: ${expenses.toMoney()}',
                                    style: TextStyle(
                                        color: Theme.of(context).textTheme.bodyText2!.color),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: ListView.builder(
                                  itemCount: revenuesList.length,
                                  itemBuilder: (context, index) {
                                    Income element = revenuesList[index];

                                    return _elementList(element);
                                  },
                                ),
                              ),
                              Expanded(
                                child: ListView.builder(
                                  itemCount: expensesList.length,
                                  itemBuilder: (context, index) {
                                    Income element = expensesList[index];

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
      ),
    );
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
