import 'package:flutter/material.dart';
import 'package:richeable/widgets/custom_card.dart';

import '../../../widgets/widgets.dart';

class UpgradeElement extends StatelessWidget {
  final int value;
  final String text;
  final String buttonText;
  final VoidCallback? onPressed;

  const UpgradeElement({
    Key? key,
    required this.value,
    required this.buttonText,
    this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4, left: 4, right: 4),
      child: Row(
        children: [
          CustomCard(
            border: 0,
            padding: 0,
            child: SizedBox(
              width: 120,
              height: 48,
              child: Center(child: Text(text)),
            ),
          ),
          const SizedBox(width: 4),
          CustomCard(
            padding: 0,
            border: 0,
            child: SizedBox(
              width: 45,
              height: 48,
              child: Center(child: Text(value.toString())),
            ),
          ),
          const SizedBox(width: 4),
          Expanded(
            child: CustomButton(borderRadius: 0, onPressed: onPressed, child: Text(buttonText)),
          ),
        ],
      ),
    );
  }
}
