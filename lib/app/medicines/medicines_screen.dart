import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/game/widget/app_bar_stats.dart';
import 'package:life_simulator/app/medicines/cubit/medicines_cubit.dart';

import '../date/widgets/next_day.dart';
import 'models/medicine_model.dart';

class MedicinesScreen extends StatelessWidget {
  const MedicinesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const AppBarStats(),
            Expanded(child: BlocBuilder<MedicinesCubit, MedicinesState>(
              builder: (context, state) {
                return state.maybeWhen(
                    orElse: () => Container(),
                    loaded: (medicines) {
                      return ListView.builder(
                          itemCount: medicines.length,
                          itemBuilder: (context, index) {
                            final Medicine medicine = medicines[index];

                            TextStyle txtStyle = medicine.active
                                ? TextStyle(
                                    color: Theme.of(context).textTheme.bodyText2?.color ??
                                        Colors.white,
                                    fontSize: 10)
                                : TextStyle(
                                    color: Theme.of(context).textTheme.bodyText1?.color ??
                                        Colors.black,
                                    fontSize: 10);

                            return Card(
                              color: medicine.active ? Theme.of(context).primaryColor : null,
                              shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 2.0),
                                          child: Text(
                                            medicine.name,
                                            style: txtStyle,
                                          ),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            style: txtStyle,
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'Cost: ',
                                                style:
                                                    txtStyle.copyWith(fontWeight: FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: '${medicine.cost.toInt()}\$',
                                              ),
                                            ],
                                          ),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            style: txtStyle,
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'Duration: ',
                                                style:
                                                    txtStyle.copyWith(fontWeight: FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    '${medicine.leftDuration}/${medicine.duration}',
                                              ),
                                            ],
                                          ),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            style: txtStyle,
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'Health multiple: ',
                                                style:
                                                    txtStyle.copyWith(fontWeight: FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: '${(medicine.health * 100).toInt()}%',
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    if (!medicine.active)
                                      IconButton(
                                        onPressed: () =>
                                            context.read<MedicinesCubit>().buy(medicine.id),
                                        icon: const FaIcon(FontAwesomeIcons.plus),
                                      ),
                                  ],
                                ),
                              ),
                            );
                          });
                    });
              },
            ))
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
              const SizedBox(width: 56),
            ],
          ),
        ),
      ),
    );
  }
}
