import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_simulator/app/time_spend/cubit/time_spend_cubit.dart';
import 'package:life_simulator/app/time_spend/widgets/time_spend_element.dart';
import 'package:life_simulator/config/routes/routes.gr.dart';
import 'package:life_simulator/utilities/utilities.dart';

import '../../../constants/constants.dart';

class TimeSpend extends StatelessWidget {
  const TimeSpend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (context.router.current.name.toString() != 'TimeSpendRoute')
          context.router.push(const TimeSpendRoute());
      },
      child: BlocBuilder<TimeSpendCubit, TimeSpendState>(
        builder: (context, state) {
          return state.maybeWhen(
              orElse: () => Container(),
              loaded: (timeSpend) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TimeSpendElement(
                      value: timeSpend.free,
                      name: LocaleKeys.free.tr(),
                      color: Colors.grey[400],
                    ),
                    TimeSpendElement(
                      value: timeSpend.work,
                      name: LocaleKeys.work.tr(),
                      color: Colors.yellow[800]!.withOpacity(0.7),
                    ),
                    TimeSpendElement(
                      value: timeSpend.learn,
                      name: LocaleKeys.learn,
                      color: Colors.purple[800]!.withOpacity(0.7),
                    ),
                    TimeSpendElement(
                      value: timeSpend.relax,
                      name: LocaleKeys.relax.tr(),
                      color: Colors.green[800]!.withOpacity(0.7),
                    ),
                    TimeSpendElement(value: timeSpend.sleep, name: LocaleKeys.sleep.tr()),
                    TimeSpendElement(
                      value: timeSpend.used,
                      name: LocaleKeys.used.tr(),
                      color: Colors.red[800]!.withOpacity(0.7),
                    ),
                  ],
                );
              });
        },
      ),
    );
  }
}
