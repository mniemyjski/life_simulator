import 'package:flutter/material.dart';

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
    return Row(
      children: [
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          child: SizedBox(
            width: 120,
            height: 45,
            child: Center(child: Text(text)),
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          child: SizedBox(
            width: 45,
            height: 45,
            child: Center(child: Text(value.toString())),
          ),
        ),
        Expanded(
          child: CustomButton(onPressed: onPressed, child: Text(buttonText)),
        ),
      ],
    );
  }
}
