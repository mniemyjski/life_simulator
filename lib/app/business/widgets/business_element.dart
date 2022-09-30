import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../config/routes/routes.gr.dart';
import '../../../constants/constants.dart';
import '../models/business/business_model.dart';

class BusinessElement extends StatelessWidget {
  const BusinessElement({
    Key? key,
    required this.element,
  }) : super(key: key);

  final Business element;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.push(BusinessRoute(id: element.id, name: element.name)),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyText1,
                  children: <TextSpan>[
                    TextSpan(
                      text: '${LocaleKeys.name.tr()}: ',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: element.name),
                  ],
                ),
              ),
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
    );
  }
}
