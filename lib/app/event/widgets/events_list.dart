import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/custom_card.dart';
import 'package:richeable/widgets/custom_sheet_design.dart';

import '../cubit/event_cubit.dart';

class EventsList extends StatelessWidget {
  const EventsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: DottedBorder(
        color: Theme.of(context).primaryColor.withOpacity(0.4),
        strokeWidth: 1,
        child: BlocBuilder<EventCubit, EventState>(
          builder: (context, state) {
            return state.maybeWhen(
                orElse: () => Container(),
                loaded: (events, currentDate) {
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
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (BuildContext context) {
                                return StatefulBuilder(builder: (context, setState) {
                                  return CustomSheetDesign(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            element.datCre!.onlyDateToString(),
                                            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                                  fontStyle: FontStyle.italic,
                                                  color: element.active ? null : Colors.grey[700],
                                                ),
                                          ),
                                          Row(
                                            children: [
                                              RichText(
                                                text: TextSpan(
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2!
                                                      .copyWith(
                                                        color: element.active
                                                            ? null
                                                            : Colors.grey[700],
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
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2!
                                                  .copyWith(
                                                    color: element.active ? null : Colors.grey[700],
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
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2!
                                                  .copyWith(
                                                    color: element.active ? null : Colors.grey[700],
                                                  ),
                                              children: <TextSpan>[
                                                const TextSpan(
                                                  text: 'Value: ',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                TextSpan(
                                                    text: element.value is int
                                                        ? '${element.value * 100}%'
                                                        : element.value.toString()),
                                              ],
                                            ),
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2!
                                                  .copyWith(
                                                    color: element.active ? null : Colors.grey[700],
                                                  ),
                                              children: <TextSpan>[
                                                const TextSpan(
                                                  text: 'Duration: ',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      '${element.leftDuration}/${element.duration}',
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                              },
                            );
                          },
                          child: CustomCard(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RichText(
                                text: TextSpan(
                                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                        color: element.active ? null : Colors.grey[700],
                                      ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '${element.datCre!.onlyDateToString()} | ',
                                      style: const TextStyle(fontStyle: FontStyle.italic),
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
