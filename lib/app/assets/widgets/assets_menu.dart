import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/utilities/utilities.dart';

import '../../../config/routes/routes.gr.dart';
import '../../../constants/constants.dart';
import '../../../widgets/menu_animate_element.dart';
import '../../date/widgets/next_day.dart';

class AssetsMenu extends StatefulWidget {
  const AssetsMenu({Key? key}) : super(key: key);

  @override
  State<AssetsMenu> createState() => _AssetsMenuState();
}

class _AssetsMenuState extends State<AssetsMenu> {
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
                txt: LocaleKeys.buy.tr(),
                onPressed: () {
                  context.router.push(const BuyAssetsRoute());
                  _nextScreen();
                },
              ),
              MenuAnimateElement(
                open: open,
                txt: LocaleKeys.build.tr(),
                onPressed: () {
                  context.router.push(const BuildAssetsRoute());
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
