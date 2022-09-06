import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/utilities/utilities.dart';

import '../cubit/event_cubit.dart';

class EventsList extends StatelessWidget {
  const EventsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 400,
        decoration: BoxDecoration(border: Border.all(color: Theme.of(context).primaryColor)),
        child: BlocBuilder<EventCubit, EventState>(
          builder: (context, state) {
            return state.maybeWhen(
                orElse: () => Container(),
                loaded: (events) {
                  return ListView.builder(
                      itemCount: events.length + 1,
                      itemBuilder: (context, index) {
                        if (index == 0 || index == events.length + 1) {
                          return const SizedBox();
                        }

                        final element = events[index - 1];

                        return GestureDetector(
                          onTap: () {
                            showModalBottomSheet<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return StatefulBuilder(builder: (context, setState) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          element.datCre!.onlyDateToString(),
                                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                                fontStyle: FontStyle.italic,
                                                color: element.active ? null : Colors.grey,
                                              ),
                                        ),
                                        Row(
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .copyWith(
                                                      color: element.active ? null : Colors.grey,
                                                    ),
                                                children: <TextSpan>[
                                                  const TextSpan(
                                                    text: 'Event: ',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: element.name,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                                  color: element.active ? null : Colors.grey,
                                                ),
                                            children: <TextSpan>[
                                              const TextSpan(
                                                text: 'Description: ',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text: element.description,
                                              ),
                                            ],
                                          ),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                                  color: element.active ? null : Colors.grey,
                                                ),
                                            children: <TextSpan>[
                                              const TextSpan(
                                                text: 'Duration: ',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text: '${element.leftDuration}/${element.duration}',
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                });
                              },
                            );
                          },
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RichText(
                                text: TextSpan(
                                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                        color: element.active ? null : Colors.grey,
                                      ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '${element.datCre!.onlyDateToString()} | ',
                                      style: const TextStyle(fontStyle: FontStyle.italic),
                                    ),
                                    const TextSpan(
                                      text: 'Event: ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: element.name,
                                    ),
                                    if (element.active)
                                      const TextSpan(
                                        text: ' | Duration: ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    if (element.active)
                                      TextSpan(
                                        text: '${element.leftDuration}/${element.duration}',
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      });
                });
          },
        ),
      ),
    );
  }
}
