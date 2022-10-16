import 'dart:ui';

import 'package:flutter/material.dart';

class StatsElement extends StatelessWidget {
  // final String name;
  final Widget child;
  final Color? color;
  final double value;

  const StatsElement({Key? key, required this.child, this.color, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            width: double.infinity,
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
                value: value,
                minHeight: 14,
                color: color?.withOpacity(0.5),
                backgroundColor: Colors.white12,
              ),
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
                  Padding(
                    padding: const EdgeInsets.only(bottom: 2),
                    child: child,
                  ),
                  // Text(
                  //   name,
                  //   style: const TextStyle(fontSize: 9),
                  // ),
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
