import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/app/business/cubit/transactions_list/transactions_business_cubit.dart';
import 'package:richeable/config/injectable/injection.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../constants/constants.dart';
import '../../widgets/widgets.dart';
import '../money/models/sum_transactions/sum_transactions_model.dart';
import '../money/models/transaction/transaction_model.dart';

class BusinessTransactionsScreen extends StatelessWidget {
  final int businessId;
  const BusinessTransactionsScreen({Key? key, required this.businessId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TransactionsBusinessCubit>(param1: businessId),
      child: BlocBuilder<TransactionsBusinessCubit, TransactionsBusinessState>(
        builder: (context, state) {
          return state.maybeWhen(
              orElse: () => Container(),
              loaded: (transactions, date) {
                return CustomScaffold(
                  appBar: AppBar(
                    title: Text(LocaleKeys.transactions.tr()),
                    automaticallyImplyLeading: false,
                  ),
                  body: Column(
                    children: [
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Card(
                            child: IconButton(
                                onPressed: () =>
                                    context.read<TransactionsBusinessCubit>().backMonth(),
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
                                    context.read<TransactionsBusinessCubit>().nextMonth(),
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
                                        '${LocaleKeys.revenue.tr()}: ${context.watch<TransactionsBusinessCubit>().getTotalSum(ETypeTransaction.revenue).toMoney()}',
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
                                        '${LocaleKeys.net.tr()}: ${context.watch<TransactionsBusinessCubit>().getTotalSum(null).toMoney()}',
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
                                        '${LocaleKeys.expense.tr()}: ${context.watch<TransactionsBusinessCubit>().getTotalSum(ETypeTransaction.expense).toMoney()}',
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
                                            .watch<TransactionsBusinessCubit>()
                                            .getSumByType(ETypeTransaction.revenue)
                                            .length,
                                        itemBuilder: (context, index) {
                                          SumTransactions element = context
                                              .watch<TransactionsBusinessCubit>()
                                              .getSumByType(ETypeTransaction.revenue)[index];

                                          return _elementList(element);
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: ListView.builder(
                                        itemCount: context
                                            .watch<TransactionsBusinessCubit>()
                                            .getSumByType(ETypeTransaction.expense)
                                            .length,
                                        itemBuilder: (context, index) {
                                          SumTransactions element = context
                                              .watch<TransactionsBusinessCubit>()
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
              });
        },
      ),
    );
  }

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
}
