import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/widgets/widgets.dart';

import '../../config/injectable/injection.dart';
import '../../config/routes/routes.gr.dart';
import '../../constants/locale_keys.g.dart';
import '../../utilities/utilities.dart';
import '../date/widgets/next_day.dart';
import '../game/widget/app_bar_stats.dart';
import 'cubit/screen_transactions/screen_transactions_cubit.dart';
import 'models/sum_transactions/sum_transactions_model.dart';
import 'models/transaction/transaction_model.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Builder _elementList(SumTransactions element) {
      return Builder(builder: (context) {
        return Card(
          child: Container(
            color: element.value < 0 ? Colors.red.withOpacity(0.3) : Colors.green.withOpacity(0.3),
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
                            '${Enums.toText(element.eTypeTransactionSource).tr()}:',
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
                        '${LocaleKeys.value.tr()}: ',
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
                ],
              ),
            ),
          ),
        );
      });
    }

    return BlocProvider(
      create: (_) => getIt<ScreenTransactionsCubit>(),
      child: CustomScaffold(
        body: BlocBuilder<ScreenTransactionsCubit, ScreenTransactionsState>(
          builder: (context, state) {
            return state.maybeWhen(
                orElse: () => Container(),
                loaded: (date, transactions) {
                  return Column(
                    children: [
                      const AppBarStats(),
                      Row(
                        children: [
                          Card(
                            child: IconButton(
                                onPressed: () =>
                                    context.read<ScreenTransactionsCubit>().backMonth(),
                                icon: const Icon(
                                  FontAwesomeIcons.arrowLeft,
                                )),
                          ),
                          Expanded(
                            child: Card(
                              child: Container(
                                height: 48,
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                    child: Text(
                                  date.onlyDateToString(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                          ),
                          Card(
                            child: IconButton(
                                onPressed: () =>
                                    context.read<ScreenTransactionsCubit>().nextMonth(),
                                icon: const Icon(
                                  FontAwesomeIcons.arrowRight,
                                )),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Expanded(
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
                                        '${LocaleKeys.revenue.tr()}: ${context.watch<ScreenTransactionsCubit>().getTotalSum(ETypeTransaction.revenue).toMoney()}',
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
                                        '${LocaleKeys.net.tr()}: ${context.watch<ScreenTransactionsCubit>().getTotalSum(null).toMoney()}',
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
                                        '${LocaleKeys.expense.tr()}: ${context.watch<ScreenTransactionsCubit>().getTotalSum(ETypeTransaction.expense).toMoney()}',
                                        style: TextStyle(
                                            color: Theme.of(context).textTheme.bodyText2!.color),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            if (transactions.isEmpty)
                              const Expanded(
                                child: Center(child: Text("You don't have any transaction yet!")),
                              ),
                            if (transactions.isNotEmpty)
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ListView.builder(
                                        itemCount: context
                                            .watch<ScreenTransactionsCubit>()
                                            .getSumByType(ETypeTransaction.revenue)
                                            .length,
                                        itemBuilder: (context, index) {
                                          SumTransactions element = context
                                              .watch<ScreenTransactionsCubit>()
                                              .getSumByType(ETypeTransaction.revenue)[index];

                                          return _elementList(element);
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: ListView.builder(
                                        itemCount: context
                                            .watch<ScreenTransactionsCubit>()
                                            .getSumByType(ETypeTransaction.expense)
                                            .length,
                                        itemBuilder: (context, index) {
                                          SumTransactions element = context
                                              .watch<ScreenTransactionsCubit>()
                                              .getSumByType(ETypeTransaction.expense)[index];

                                          return _elementList(element);
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      )
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
            children: [
              FloatingActionButton(
                heroTag: null,
                onPressed: () => context.router.pop(),
                child: const FaIcon(FontAwesomeIcons.arrowRotateLeft),
              ),
              const NextDayButton(),
              FloatingActionButton(
                heroTag: null,
                onPressed: () {
                  context.router.push(const IncomeRoute());
                },
                child: const FaIcon(FontAwesomeIcons.solidNoteSticky),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
