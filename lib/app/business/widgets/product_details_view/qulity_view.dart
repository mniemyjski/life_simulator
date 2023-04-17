import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constants/constants.dart';
import '../../../../widgets/widgets.dart';
import '../../cubit/product_details/product_details_cubit.dart';
import '../../models/employee/employee_model.dart';
import '../assign_employee_element.dart';

class QualityView extends StatelessWidget {
  const QualityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomCard(
                  child: SizedBox(
                    height: 48,
                    child: Center(
                        child: Text(
                      LocaleKeys.scientist.tr(),
                      style: Theme.of(context).textTheme.bodyText2,
                    )),
                  ),
                ),
              ),
              CustomCard(
                padding: 0,
                child: SizedBox(
                  width: 56,
                  height: 48,
                  child: Center(
                      child: AutoSizeText(
                    LocaleKeys.amount.tr(),
                    minFontSize: 6,
                    maxLines: 1,
                  )),
                ),
              ),
              const SizedBox(width: 4),
              CustomCard(
                padding: 0,
                child: SizedBox(
                  width: 56,
                  height: 48,
                  child: Center(
                      child: AutoSizeText(
                    LocaleKeys.available.tr(),
                    minFontSize: 6,
                    maxLines: 1,
                  )),
                ),
              ),
              const SizedBox(width: 4),
              CustomCard(
                padding: 0,
                child: SizedBox(
                  width: 102,
                  height: 48,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AutoSizeText(
                        '${LocaleKeys.efficiency.tr()}:',
                        minFontSize: 6,
                        maxLines: 1,
                      ),
                      AutoSizeText(
                        context.watch<ProductDetailsCubit>().efficient(ETypeEmployees.scientist),
                        minFontSize: 6,
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8),
            ],
          ),
          Expanded(
            child: Scrollbar(
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final int lvl = index + 1;
                  return AssignEmployeeElement(
                    lvl: lvl,
                    amount: context
                        .watch<ProductDetailsCubit>()
                        .getBusy(lvl: lvl, eTypeEmployees: ETypeEmployees.scientist),
                    available: context
                        .watch<ProductDetailsCubit>()
                        .getFree(lvl: lvl, eTypeEmployees: ETypeEmployees.scientist),
                    increase: () => context
                        .read<ProductDetailsCubit>()
                        .assign(lvl: lvl, eTypeEmployees: ETypeEmployees.scientist),
                    decrease: () => context
                        .read<ProductDetailsCubit>()
                        .unAssign(lvl: lvl, eTypeEmployees: ETypeEmployees.scientist),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
    return Container();
  }
}
