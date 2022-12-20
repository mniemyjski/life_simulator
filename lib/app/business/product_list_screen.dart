import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/app/business/cubit/research_product/research_product_cubit.dart';
import 'package:richeable/app/business/widgets/product_element.dart';
import 'package:richeable/app/business/widgets/research_create_sheet.dart';
import 'package:richeable/app/date/widgets/next_day.dart';
import 'package:richeable/app/game/widget/app_bar_game.dart';
import 'package:richeable/config/injectable/injection.dart';
import 'package:richeable/widgets/custom_alert_dialog.dart';
import 'package:richeable/widgets/custom_card.dart';

import '../../constants/constants.dart';
import '../../utilities/utilities.dart';
import '../../widgets/widgets.dart';
import 'cubit/products_list/products_cubit.dart';

class ProductListScreen extends StatefulWidget {
  final int businessId;
  const ProductListScreen({Key? key, required this.businessId}) : super(key: key);

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (context) => getIt<ResearchProductCubit>(param1: widget.businessId),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => getIt<ProductsCubit>(param1: widget.businessId),
        ),
      ],
      child: Builder(builder: (context) {
        return CustomScaffold(
          appBar: AppBarGame(
            title: LocaleKeys.products.tr(),
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
                                style:
                                    Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 14),
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
                                              TextSpan(
                                                  text: Enums.toText(research.eTypeProduct).tr()),
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
                                              TextSpan(
                                                  text: Enums.toText(research.eTypeQuality).tr()),
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
                                              TextSpan(text: '${research.work.toExp()}'),
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
                      loaded: (products) {
                        return Expanded(
                          child: ListView.builder(
                              itemCount: products.length,
                              itemBuilder: (context, index) {
                                final product = products[index];
                                return ProductElement(product: product);
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
                const NextDayButton(),
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
                      builder: (_) {
                        return BlocProvider.value(
                          value: BlocProvider.of<ResearchProductCubit>(context),
                          child: ResearchCreateSheet(businessId: widget.businessId),
                        );
                      },
                    );
                  },
                  child: const FaIcon(FontAwesomeIcons.plus),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
