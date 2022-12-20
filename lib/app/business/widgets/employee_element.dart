import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/custom_card.dart';

import '../../../constants/constants.dart';
import '../models/employee/employee_model.dart';

class EmployeeElement extends StatelessWidget {
  final Employee employee;
  final VoidCallback? onPressed;
  final GestureLongPressCallback? onLongPress;
  final Widget? icon;
  const EmployeeElement(
      {Key? key, required this.employee, this.onPressed, this.onLongPress, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  child: Icon(
                    FontAwesomeIcons.user,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 2),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (employee.id >= 0)
                      RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.bodyText2,
                          children: <TextSpan>[
                            const TextSpan(
                              text: 'Id: ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: '${employee.id}'),
                          ],
                        ),
                      ),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodyText2,
                        children: <TextSpan>[
                          const TextSpan(
                            text: '${LocaleKeys.satisfaction}: ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: '${employee.satisfaction * 100}%'),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodyText2,
                        children: <TextSpan>[
                          const TextSpan(
                            text: '${LocaleKeys.efficiency}: ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: '${employee.efficiency * 100}%'),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodyText2,
                        children: <TextSpan>[
                          const TextSpan(
                            text: '${LocaleKeys.cost}: ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: '${employee.cost.toMoney()}'),
                        ],
                      ),
                    ),
                    if (employee.fired != null)
                      RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.bodyText2,
                          children: <TextSpan>[
                            const TextSpan(
                              text: '${LocaleKeys.dateTimeFired}: ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: employee.fired!.onlyDateToString()),
                          ],
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: RatingBarIndicator(
                        rating: employee.rating.toDouble(),
                        itemBuilder: (context, index) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        itemCount: 10,
                        itemSize: 10.0,
                        direction: Axis.horizontal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            if (icon != null && employee.fired == null)
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: InkWell(
                    onLongPress: onLongPress,
                    onTap: onPressed,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: icon,
                    )),
              )
          ],
        ),
      ),
    );
  }
}
