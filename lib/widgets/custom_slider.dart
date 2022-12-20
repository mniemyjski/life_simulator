import 'package:flutter/material.dart';

import 'custom_card.dart';

class CustomSlider extends StatelessWidget {
  final double value;
  final double min;
  final double max;
  final int division;
  final String txt;
  final ValueChanged<double>? onChanged;

  const CustomSlider({
    Key? key,
    required this.value,
    required this.min,
    required this.max,
    required this.division,
    required this.txt,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      padding: 0,
      child: Row(
        children: [
          Expanded(
            child: Slider(
              inactiveColor: Colors.black26,
              activeColor: Colors.white,
              value: value,
              min: min,
              max: max,
              divisions: division,
              onChanged: onChanged,
            ),
          ),
          Text(txt),
          const SizedBox(width: 4),
        ],
      ),
    );
  }
}
