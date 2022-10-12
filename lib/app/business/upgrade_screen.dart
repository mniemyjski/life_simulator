import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/app/business/cubit/businesses/businesses_cubit.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../constants/constants.dart';
import '../../widgets/widgets.dart';
import 'models/business/business_model.dart';

class UpgradeScreen extends StatelessWidget {
  final int businessId;

  const UpgradeScreen({Key? key, required this.businessId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BusinessesCubit, BusinessesState>(
      builder: (context, state) {
        return state.maybeWhen(
            orElse: () => Container(),
            loaded: (businesses) {
              Business business =
                  businesses.firstWhereOrNull((element) => element.id == businessId)!;

              return CustomScaffold(
                appBar: AppBar(
                  title: Text(LocaleKeys.upgrade.tr()),
                  automaticallyImplyLeading: false,
                ),
                body: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Card(
                            child: Container(
                              width: 43,
                              height: 43,
                              child: Center(child: Text(business.maxWorkers.toString())),
                            ),
                          ),
                          Expanded(
                            child: CustomButton(
                                onPressed: () =>
                                    context.read<BusinessesCubit>().increaseMaxWorkers(business),
                                child: Text('add 10 workers')),
                          ),
                        ],
                      ),
                    ],
                  ),
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
    );
  }
}
