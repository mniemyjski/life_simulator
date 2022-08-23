import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/utilities/utilities.dart';

import '../../../../config/routes/routes.gr.dart';
import '../../../../constants/constants.dart';
import '../../../date/widgets/next_day.dart';
import '../../models/house/house_model.dart';
import 'menu_animate_element.dart';

class PersonalityMenu extends StatefulWidget {
  const PersonalityMenu({Key? key}) : super(key: key);

  @override
  State<PersonalityMenu> createState() => _PersonalityMenuState();
}

class _PersonalityMenuState extends State<PersonalityMenu> {
  bool open = false;

  _nextScreen() => setState(() {
        open = false;
      });

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
          AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: !open ? 1 : 0,
            child: const NextDayButton(),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MenuAnimateElement(
                open: open,
                txt: LocaleKeys.rentHouse.tr(),
                onPressed: () {
                  context.router.push(HouseRoute(eTypeHouse: ETypeHouse.rent));
                  _nextScreen();
                },
              ),
              MenuAnimateElement(
                open: open,
                txt: LocaleKeys.buyHouse.tr(),
                onPressed: () {
                  context.router.push(HouseRoute(eTypeHouse: ETypeHouse.buy));
                  _nextScreen();
                },
              ),
              MenuAnimateElement(
                open: open,
                txt: LocaleKeys.buyTransport.tr(),
                onPressed: () {
                  context.router.push(const CarRoute());
                  _nextScreen();
                },
              ),
              MenuAnimateElement(
                open: open,
                txt: LocaleKeys.food.tr(),
                onPressed: () {
                  context.router.push(const FoodsRoute());
                  _nextScreen();
                },
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: FloatingActionButton(
                  onPressed: () => setState(() {
                    open = !open;
                  }),
                  child: Icon(!open ? Icons.menu : Icons.close),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
