import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_simulator/app/time_spend/cubit/time_spend_cubit.dart';
import 'package:life_simulator/app/time_spend/widgets/time_spend_element.dart';
import 'package:life_simulator/config/routes/routes.gr.dart';
import 'package:life_simulator/utilities/utilities.dart';

import '../../../constants/constants.dart';
import '../models/bonus/bonus_model.dart';

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
                int bonusCommuting = context.watch<TimeSpendCubit>().getBonus(ETypeBonus.commuting);
                int bonusRelax = context.watch<TimeSpendCubit>().getBonus(ETypeBonus.relax);
                int bonusLearn = context.watch<TimeSpendCubit>().getBonus(ETypeBonus.learn);
                int bonusSleep = context.watch<TimeSpendCubit>().getBonus(ETypeBonus.sleep);

                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TimeSpendElement(
                      value: timeSpend.free,
                      valueName: '${(timeSpend.free).round()}',
                      name: LocaleKeys.free.tr(),
                      color: Colors.grey[400],
                    ),
                    TimeSpendElement(
                      value: timeSpend.work,
                      valueName:
                          '${(timeSpend.work + timeSpend.commuting - bonusCommuting).round()} (${-bonusCommuting})',
                      name: LocaleKeys.work.tr(),
                      color: Colors.yellow[800]!.withOpacity(0.7),
                    ),
                    TimeSpendElement(
                      value: timeSpend.learn,
                      valueName: '${(timeSpend.learn).round()} ($bonusLearn)',
                      name: LocaleKeys.learn,
                      color: Colors.purple[800]!.withOpacity(0.7),
                    ),
                    TimeSpendElement(
                      value: timeSpend.relax,
                      valueName: '${(timeSpend.relax).round()} ($bonusRelax)',
                      name: LocaleKeys.relax.tr(),
                      color: Colors.green[800]!.withOpacity(0.7),
                    ),
                    TimeSpendElement(
                      value: timeSpend.sleep,
                      valueName: '${(timeSpend.sleep).round()} ($bonusSleep)',
                      name: LocaleKeys.sleep.tr(),
                    ),
                    TimeSpendElement(
                      value: timeSpend.used,
                      valueName: '${(timeSpend.used).round()}',
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
