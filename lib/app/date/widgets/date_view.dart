import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/date_cubit.dart';

class DateChange extends StatelessWidget {
  const DateChange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return context.watch<DateCubit>().state.maybeWhen(
          orElse: () => const SizedBox(),
          loaded: (dateGame) {
            return Column(
              children: [
                Row(
                  children: [
                    Card(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Y:${dateGame.year}',
                        style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color),
                      ),
                    )),
                    Card(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'M:${dateGame.month}',
                        style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color),
                      ),
                    )),
                    Card(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'D:${dateGame.day}',
                        style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color),
                      ),
                    )),
                  ],
                ),
              ],
            );
          },
        );
  }
}
