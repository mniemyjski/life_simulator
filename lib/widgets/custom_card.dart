import 'dart:ui';

import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final double? border;
  const CustomCard({Key? key, this.child, this.color, this.border = 8}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(border!),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 10),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    color ?? const Color.fromRGBO(1, 132, 194, 1.0).withOpacity(0.4),
                    Colors.blueGrey.withOpacity(0.2),
                  ],
                ),
                borderRadius: BorderRadius.circular(border!),
                border: Border.all(width: 1, color: Colors.white10),
              ),
              child: child,
            ),
          )),
    );
  }
}
