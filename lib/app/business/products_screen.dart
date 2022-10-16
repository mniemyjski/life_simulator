import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/app/business/cubit/products/products_cubit.dart';
import 'package:richeable/app/business/cubit/research_product/research_product_cubit.dart';
import 'package:richeable/app/business/widgets/research_create_sheet.dart';
import 'package:richeable/app/game/widget/app_bar_game.dart';
import 'package:richeable/widgets/custom_alert_dialog.dart';
import 'package:richeable/widgets/custom_card.dart';

import '../../constants/constants.dart';
import '../../utilities/utilities.dart';
import '../../widgets/widgets.dart';

class ProductScreen extends StatefulWidget {
  final int businessId;
  const ProductScreen({Key? key, required this.businessId}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const AppBarGame(
        title: LocaleKeys.products,
        showTimeSpend: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<ResearchProductCubit, ResearchProductState>(
            builder: (context, state) {
              return state.maybeWhen(
                  orElse: () => Container(),
                  loaded: (research) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4, top: 8),
                          child: Text(
                            '${LocaleKeys.research.tr()}:',
                            style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 14),
                          ),
                        ),
                        CustomCard(
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
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
                                          TextSpan(text: research.name),
                                        ],
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        style: Theme.of(context).textTheme.bodyText2,
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '${LocaleKeys.typeProduct.tr()}: ',
                                            style: const TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(text: Enums.toText(research.eTypeProduct).tr()),
                                        ],
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        style: Theme.of(context).textTheme.bodyText2,
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '${LocaleKeys.typeQuality.tr()}: ',
                                            style: const TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(text: Enums.toText(research.eTypeQuality).tr()),
                                        ],
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        style: Theme.of(context).textTheme.bodyText2,
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '${LocaleKeys.datEnd.tr()}: ',
                                            style: const TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(text: research.dateEnd.onlyDateToString()),
                                        ],
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        style: Theme.of(context).textTheme.bodyText2,
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '${LocaleKeys.work.tr()}: ',
                                            style: const TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(text: '${research.work}'),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                IconButton(
                                    onPressed: () async {
                                      bool result = await customAlertDialog(
                                        context: context,
                                        title: LocaleKeys.areYouSure.tr(),
                                        desc: LocaleKeys.areYouSureRemoveResearch.tr(),
                                      );
                                      if (result && mounted) {
                                        context.read<ResearchProductCubit>().remove(research);
                                      }
                                    },
                                    icon: Icon(
                                      FontAwesomeIcons.trash,
                                      color: Colors.red.withOpacity(0.5),
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  });
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4, top: 8),
            child: Text(
              '${LocaleKeys.products.tr()}:',
              style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 14),
            ),
          ),
          BlocBuilder<ProductsCubit, ProductsState>(
            builder: (context, state) {
              return state.maybeWhen(
                  orElse: () => Container(),
                  loaded: (researches) {
                    return Expanded(
                      child: ListView.builder(
                          itemCount: researches.length,
                          itemBuilder: (context, index) {
                            return CustomCard(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(),
                              ),
                            );
                          }),
                    );
                  });
            },
          ),
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
            FloatingActionButton(
              heroTag: null,
              onPressed: () {
                showModalBottomSheet<void>(
                  isScrollControlled: true,
                  clipBehavior: Clip.hardEdge,
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(12.0))),
                  context: context,
                  builder: (BuildContext context) {
                    return ResearchCreateSheet(businessId: widget.businessId);
                  },
                );
              },
              child: const FaIcon(FontAwesomeIcons.plus),
            ),
          ],
        ),
      ),
    );
  }
}
