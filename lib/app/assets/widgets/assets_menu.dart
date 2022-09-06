import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../config/routes/routes.gr.dart';
import '../../../constants/constants.dart';
import '../../date/widgets/next_day.dart';

class AssetsMenu extends StatelessWidget {
  const AssetsMenu({Key? key}) : super(key: key);

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
                          LocaleKeys.buy.tr(),
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                  ),
                ),
                child: const FaIcon(FontAwesomeIcons.building),
                onTap: () => context.router.push(const BuyAssetsRoute()),
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
                          LocaleKeys.build.tr(),
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                  ),
                ),
                child: const FaIcon(FontAwesomeIcons.helmetSafety),
                onTap: () => context.router.push(const BuildAssetsRoute()),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
