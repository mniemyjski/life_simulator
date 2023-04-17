import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/app/business/models/business/business_model.dart';
import 'package:richeable/app/business/widgets/business_creator_sheet.dart';
import 'package:richeable/app/game/widget/app_bar_game.dart';
import 'package:richeable/constants/locale_keys.g.dart';
import 'package:richeable/widgets/custom_scaffold.dart';

import '../date/widgets/next_day.dart';
import 'cubit/businesses_list/businesses_cubit.dart';
import 'widgets/business_element.dart';

class BusinessesScreen extends StatelessWidget {
  const BusinessesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBarGame(
        title: LocaleKeys.businesses.tr(),
        showTimeSpend: false,
      ),
      body: Column(
        children: [
          // const AppBarStats(),
          Expanded(
            child: BlocBuilder<BusinessesCubit, BusinessesState>(
              builder: (context, state) {
                return state.maybeWhen(
                    orElse: () => Container(),
                    loaded: (businesses) {
                      if (businesses.isEmpty) {
                        return Center(child: Text(LocaleKeys.youDontHaveAnyBusiness.tr()));
                      }

                      return ListView.builder(
                          itemCount: businesses.length,
                          itemBuilder: (context, index) {
                            final Business element = businesses[index];

                            return BusinessElement(element: element);
                          });
                    });
              },
            ),
          ),
          const SizedBox(height: 80),
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
              onPressed: () => showModalBottomSheet<void>(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (BuildContext context) => const BusinessCreatorSheet()),
              child: const FaIcon(FontAwesomeIcons.plus),
            ),
          ],
        ),
      ),
    );
  }
}
