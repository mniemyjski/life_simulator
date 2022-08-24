import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/utilities/utilities.dart';

import '../../../../config/routes/routes.gr.dart';
import '../../../../constants/constants.dart';
import '../../../date/widgets/next_day.dart';
import '../../models/house/house_model.dart';

class PersonalityMenu extends StatelessWidget {
  const PersonalityMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: null,
            onPressed: () => context.router.pop(),
            child: const FaIcon(FontAwesomeIcons.arrowRotateLeft),
          ),
          const NextDayButton(),

          SpeedDial(
            animatedIcon: AnimatedIcons.menu_close,
            spaceBetweenChildren: 4,
            spacing: 15,
            overlayColor: Colors.black,
            overlayOpacity: 0.5,
            children: [
              SpeedDialChild(
                labelWidget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Container(
                      width: 100,
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          LocaleKeys.food.tr(),
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                  ),
                ),
                child: const FaIcon(FontAwesomeIcons.bowlFood),
                onTap: () => context.router.push(const FoodRoute()),
              ),
              SpeedDialChild(
                labelWidget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Container(
                      width: 100,
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          LocaleKeys.buyTransport.tr(),
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                  ),
                ),
                child: const FaIcon(FontAwesomeIcons.car),
                onTap: () => context.router.push(const TransportRoute()),
              ),
              SpeedDialChild(
                labelWidget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Container(
                      width: 100,
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          LocaleKeys.buyHouse.tr(),
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                  ),
                ),
                child: const FaIcon(FontAwesomeIcons.house),
                onTap: () => context.router.push(HouseRoute(eTypeHouse: ETypeHouse.buy)),
              ),
              SpeedDialChild(
                labelWidget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Container(
                      width: 100,
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          LocaleKeys.rentHouse.tr(),
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                  ),
                ),
                child: const FaIcon(FontAwesomeIcons.house),
                onTap: () => context.router.push(HouseRoute(eTypeHouse: ETypeHouse.rent)),
              ),
            ],
          ),

          // Column(
          //   mainAxisSize: MainAxisSize.min,
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   crossAxisAlignment: CrossAxisAlignment.end,
          //   children: [
          //     MenuAnimateElement(
          //       open: open,
          //       txt: LocaleKeys.rentHouse.tr(),
          //       onPressed: () {
          //         context.router.push(HouseRoute(eTypeHouse: ETypeHouse.rent));
          //         _nextScreen();
          //       },
          //     ),
          //     MenuAnimateElement(
          //       open: open,
          //       txt: LocaleKeys.buyHouse.tr(),
          //       onPressed: () {
          //         context.router.push(HouseRoute(eTypeHouse: ETypeHouse.buy));
          //         _nextScreen();
          //       },
          //     ),
          //     MenuAnimateElement(
          //       open: open,
          //       txt: LocaleKeys.buyTransport.tr(),
          //       onPressed: () {
          //         context.router.push(const TransportRoute());
          //         _nextScreen();
          //       },
          //     ),
          //     MenuAnimateElement(
          //       open: open,
          //       txt: LocaleKeys.food.tr(),
          //       onPressed: () {
          //         context.router.push(const FoodRoute());
          //         _nextScreen();
          //       },
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.only(bottom: 4.0),
          //       child: FloatingActionButton(
          //         onPressed: () => setState(() {
          //           open = !open;
          //         }),
          //         child: Icon(!open ? Icons.menu : Icons.close),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
