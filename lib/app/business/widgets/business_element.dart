import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/custom_card.dart';

import '../../../config/routes/routes.gr.dart';
import '../../../constants/constants.dart';
import '../models/business/business_model.dart';

class BusinessElement extends StatelessWidget {
  final Business element;

  const BusinessElement({
    Key? key,
    required this.element,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(BusinessRoute(
          businessId: element.id,
        ));
      },
      child: CustomCard(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyText2,
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
                  style: Theme.of(context).textTheme.bodyText2,
                  children: <TextSpan>[
                    TextSpan(
                      text: '${LocaleKeys.employees.tr()}: ',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: '${element.countWorkers}/${element.maxWorkers}'),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyText2,
                  children: <TextSpan>[
                    TextSpan(
                      text: '${LocaleKeys.scientist.tr()}: ',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: '${element.countScientist}/${element.maxScientist}'),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyText2,
                  children: <TextSpan>[
                    TextSpan(
                      text: '${LocaleKeys.accountant.tr()}: ',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: '${element.countAccountant}/${element.maxAccountant}'),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyText2,
                  children: <TextSpan>[
                    TextSpan(
                      text: '${LocaleKeys.analyst.tr()}: ',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: '${element.countAnalyst}/${element.maxAnalyst}'),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyText2,
                  children: <TextSpan>[
                    TextSpan(
                      text: '${LocaleKeys.manager.tr()}: ',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: '${element.countManager}/${element.maxManager}'),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyText2,
                  children: <TextSpan>[
                    TextSpan(
                      text: '${LocaleKeys.marketer.tr()}: ',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: '${element.countMarketer}/${element.maxMarketer}'),
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
