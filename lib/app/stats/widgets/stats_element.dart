import 'package:flutter/material.dart';

class StatsElement extends StatelessWidget {
  final String name;
  final Color? color;
  final double value;

  const StatsElement({Key? key, required this.name, this.color, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(4.0),
          width: double.infinity,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            child: LinearProgressIndicator(
              value: value,
              minHeight: 14,
              color: color,
              backgroundColor: Colors.white30,
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontSize: 9),
                  ),
                  Text(
                    '${(value * 100).round()}%',
                    style: const TextStyle(fontSize: 9),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
