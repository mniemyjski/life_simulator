import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../constants/constants.dart';
import '../../widgets/widgets.dart';

class BusinessTransactionsScreen extends StatelessWidget {
  const BusinessTransactionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.transactions.tr()),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          SizedBox(height: 8),
          Row(
            children: [
              Card(
                child: IconButton(
                    onPressed: null,
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
                      '      date.onlyDateToString()',
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
                    onPressed: null,
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
                            '${LocaleKeys.revenue.tr()}: ${0.0.toMoney()}',
                            style: TextStyle(color: Theme.of(context).textTheme.bodyText2!.color),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '${LocaleKeys.net.tr()}: ${0.0.toMoney()}',
                            style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color),
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
                            '${LocaleKeys.expense.tr()}: ${0.0.toMoney()}',
                            style: TextStyle(color: Theme.of(context).textTheme.bodyText2!.color),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // if (transactions.isEmpty)
                //   const Expanded(
                //     child: Center(child: Text("You don't have any transaction yet!")),
                //   ),
                // if (transactions.isNotEmpty)
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: 0,
                          itemBuilder: (context, index) {
                            return Container();
                          },
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 0,
                          itemBuilder: (context, index) {
                            return Container();
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
  }
}
