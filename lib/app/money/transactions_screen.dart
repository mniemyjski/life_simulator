import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/widgets/custom_card.dart';
import 'package:richeable/widgets/widgets.dart';

import '../../config/injectable/injection.dart';
import '../../constants/locale_keys.g.dart';
import '../../utilities/utilities.dart';
import '../date/widgets/next_day.dart';
import '../game/widget/app_bar_game.dart';
import 'cubit/transactions/transactions_cubit.dart';
import 'models/sum_transactions/sum_transactions_model.dart';
import 'models/transaction/transaction_model.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Builder _elementList(SumTransactions element) {
      return Builder(builder: (context) {
        return CustomCard(
          color: element.value < 0 ? Colors.red.withOpacity(0.2) : Colors.green.withOpacity(0.2),
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
                            color: Theme.of(context).textTheme.bodyText2!.color,
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
                        color: Theme.of(context).textTheme.bodyText2!.color,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      element.value.toMoney(),
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText2!.color,
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

    return BlocProvider(
      create: (_) => getIt<TransactionsCubit>(),
      child: CustomScaffold(
        appBar: AppBarGame(title: LocaleKeys.transactions.tr()),
        body: BlocBuilder<TransactionsCubit, TransactionsState>(
          builder: (context, state) {
            return state.maybeWhen(
                orElse: () => Container(),
                loaded: (date, transactions) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          CustomCard(
                            child: IconButton(
                                onPressed: () => context.read<TransactionsCubit>().backMonth(),
                                icon: const Icon(
                                  FontAwesomeIcons.arrowLeft,
                                  color: Colors.white,
                                )),
                          ),
                          Expanded(
                            child: CustomCard(
                              child: Container(
                                height: 48,
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                    child: Text(
                                  date.onlyDateToString(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                          ),
                          CustomCard(
                            child: IconButton(
                                onPressed: () => context.read<TransactionsCubit>().nextMonth(),
                                icon: const Icon(
                                  FontAwesomeIcons.arrowRight,
                                  color: Colors.white,
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
                                  child: CustomCard(
                                    border: 0,
                                    color: Colors.green.withOpacity(0.7),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        '${LocaleKeys.revenue.tr()}: ${context.watch<TransactionsCubit>().getTotalSum(ETypeTransaction.revenue).toMoney()}',
                                        style: TextStyle(
                                            color: Theme.of(context).textTheme.bodyText2!.color),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: CustomCard(
                                    border: 0,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        '${LocaleKeys.net.tr()}: ${context.watch<TransactionsCubit>().getTotalSum(null).toMoney()}',
                                        style: Theme.of(context).textTheme.bodyText2,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: CustomCard(
                                    border: 0,
                                    color: Colors.red.withOpacity(0.7),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        '${LocaleKeys.expense.tr()}: ${context.watch<TransactionsCubit>().getTotalSum(ETypeTransaction.expense).toMoney()}',
                                        style: Theme.of(context).textTheme.bodyText2,
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
                                            .watch<TransactionsCubit>()
                                            .getSumByType(ETypeTransaction.revenue)
                                            .length,
                                        itemBuilder: (context, index) {
                                          SumTransactions element = context
                                              .watch<TransactionsCubit>()
                                              .getSumByType(ETypeTransaction.revenue)[index];

                                          return _elementList(element);
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: ListView.builder(
                                        itemCount: context
                                            .watch<TransactionsCubit>()
                                            .getSumByType(ETypeTransaction.expense)
                                            .length,
                                        itemBuilder: (context, index) {
                                          SumTransactions element = context
                                              .watch<TransactionsCubit>()
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
              const SizedBox(width: 56),
            ],
          ),
        ),
      ),
    );
  }
}
