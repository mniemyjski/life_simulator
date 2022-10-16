import 'dart:ui';

import 'package:flutter/material.dart';

class CustomSheetDesign extends StatelessWidget {
  final Widget child;
  const CustomSheetDesign({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(12.0)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color.fromRGBO(1, 132, 194, 1.0).withOpacity(0.2),
                  Colors.blueGrey.withOpacity(0.1),
                ],
              ),
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(width: 1, color: Colors.white10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
