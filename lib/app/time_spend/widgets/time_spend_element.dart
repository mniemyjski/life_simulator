import 'dart:ui';

import 'package:flutter/material.dart';

class TimeSpendElement extends StatelessWidget {
  final String name;
  final String valueName;
  final Color? color;
  final int value;
  final int? minValue;

  const TimeSpendElement({
    Key? key,
    required this.name,
    this.color,
    required this.value,
    required this.valueName,
    this.minValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = value > (minValue ?? -1)
        ? const TextStyle(fontSize: 9)
        : TextStyle(fontSize: 9, color: Colors.red[800], fontWeight: FontWeight.bold);

    return Column(
      children: [
        Text(
          name,
          style: textStyle,
        ),
        Stack(
          children: [
            Container(
              width: 50,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white12,
                    offset: Offset(-1, -1),
                    blurRadius: 1.0,
                  ),
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(2, 2),
                    blurRadius: 1.0,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                child: LinearProgressIndicator(
                  value: value / 24,
                  minHeight: 13,
                  color: color?.withOpacity(0.6),
                  backgroundColor: Colors.white12,
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(valueName, style: textStyle),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
