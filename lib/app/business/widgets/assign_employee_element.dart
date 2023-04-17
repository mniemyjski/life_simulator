import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../widgets/widgets.dart';

class AssignEmployeeElement extends StatelessWidget {
  final int lvl;
  final int amount;
  final int available;
  final VoidCallback? increase;
  final VoidCallback? decrease;
  const AssignEmployeeElement({
    Key? key,
    required this.lvl,
    required this.amount,
    required this.available,
    this.increase,
    this.decrease,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomCard(
            child: SizedBox(
              height: 48,
              child: Center(
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: Icon(
                        FontAwesomeIcons.user,
                        color: Colors.white,
                      ),
                    ),
                    RatingBarIndicator(
                      rating: lvl.toDouble(),
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 10,
                      itemSize: 10.0,
                      direction: Axis.horizontal,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        CustomCard(
          color: amount == 0 ? Colors.grey.withOpacity(0.4) : null,
          padding: 0,
          child: SizedBox(
            width: 56,
            height: 48,
            child: Center(child: Text(amount.toString())),
          ),
        ),
        const SizedBox(width: 4),
        CustomCard(
          color: available == 0 ? Colors.grey.withOpacity(0.4) : null,
          padding: 0,
          child: SizedBox(
            width: 56,
            height: 48,
            child: Center(child: Text(available.toString())),
          ),
        ),
        const SizedBox(width: 4),
        CustomButton(onPressed: increase, child: const Icon(FontAwesomeIcons.plus)),
        const SizedBox(width: 4),
        CustomButton(onPressed: decrease, child: const Icon(FontAwesomeIcons.minus)),
        const SizedBox(width: 8),
      ],
    );
  }
}
