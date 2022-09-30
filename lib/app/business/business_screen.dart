import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/app/business/cubit/businesses/businesses_cubit.dart';
import 'package:richeable/app/business/models/business/business_model.dart';
import 'package:richeable/constants/constants.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/custom_button.dart';
import 'package:richeable/widgets/custom_scaffold.dart';

import '../../config/routes/routes.gr.dart';

class BusinessScreen extends StatelessWidget {
  final String id;
  final String name;

  const BusinessScreen({
    Key? key,
    required this.id,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        title: Text(name),
        automaticallyImplyLeading: false,
      ),
      body: BlocBuilder<BusinessesCubit, BusinessesState>(
        builder: (context, state) {
          return state.maybeWhen(
              orElse: () => Container(),
              loaded: (businesses) {
                final Business? element =
                    businesses.firstWhereOrNull((element) => element.id == id);
                if (element == null) return Container();

                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    children: [
                      Card(
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: Theme.of(context).textTheme.bodyText1,
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '${LocaleKeys.employees.tr()}: ',
                                      style: const TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(text: '0/${element.upgrade.maxEmployees}'),
                                  ],
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  style: Theme.of(context).textTheme.bodyText1,
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '${LocaleKeys.scientist.tr()}: ',
                                      style: const TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(text: '0/${element.upgrade.maxScientist}'),
                                  ],
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  style: Theme.of(context).textTheme.bodyText1,
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '${LocaleKeys.accountant.tr()}: ',
                                      style: const TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(text: '0/${element.upgrade.accountant ? "1" : "0"}'),
                                  ],
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  style: Theme.of(context).textTheme.bodyText1,
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '${LocaleKeys.analyst.tr()}: ',
                                      style: const TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(text: '0/${element.upgrade.analyst ? "1" : "0"}'),
                                  ],
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  style: Theme.of(context).textTheme.bodyText1,
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '${LocaleKeys.manager.tr()}: ',
                                      style: const TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(text: '0/${element.upgrade.manager ? "1" : "0"}'),
                                  ],
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  style: Theme.of(context).textTheme.bodyText1,
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '${LocaleKeys.marketer.tr()}: ',
                                      style: const TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(text: '0/${element.upgrade.marketer ? "1" : "0"}'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: TextSpan(
                                style: Theme.of(context).textTheme.bodyText1,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '${LocaleKeys.value.tr()}: ',
                                    style: const TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(text: 0.0.toMoney()),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: GridView.count(
                          padding: const EdgeInsets.all(1),
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                          crossAxisCount: 3,
                          shrinkWrap: true,
                          children: [
                            CustomButton(
                              onPressed: () {
                                context.router.push(const ProductRoute());
                              },
                              child: Text(LocaleKeys.products.tr()),
                            ),
                            CustomButton(
                              onPressed: () {
                                context.router.push(const EmployeesRoute());
                              },
                              child: Text(LocaleKeys.employees.tr()),
                            ),
                            CustomButton(
                              onPressed: () {
                                context.router.push(const ProductRoute());
                              },
                              child: Text(LocaleKeys.upgrade.tr()),
                            ),
                            CustomButton(
                              onPressed: () {
                                context.router.push(const BusinessTransactionsRoute());
                              },
                              child: Text(LocaleKeys.transactions.tr()),
                            ),
                            CustomButton(
                              backgroundColor: Colors.red[900],
                              onPressed: () {
                                context.router.pop();
                                context.read<BusinessesCubit>().remove(element);
                              },
                              child: Text(LocaleKeys.remove.tr()),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
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
            const SizedBox(width: 56),
            const SizedBox(width: 56),
          ],
        ),
      ),
    );
  }
}
