import 'dart:ui';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final Color textColor;
  final VoidCallback? onPressed;
  final double? borderRadius;

  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.textColor = Colors.white,
    this.backgroundColor,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // boxShadow: const [
        //   BoxShadow(
        //     color: Colors.white24,
        //     offset: Offset(-1, -1),
        //     blurRadius: 1.0,
        //   ),
        //   BoxShadow(
        //     color: Colors.black54,
        //     offset: Offset(1, 1),
        //     blurRadius: 1.0,
        //   )
        // ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: const [0.0, 1.0],
          colors: [
            if (onPressed != null) Theme.of(context).scaffoldBackgroundColor.withOpacity(0.6),
            if (onPressed != null) Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
            if (onPressed == null) Colors.grey.withOpacity(0.6),
            if (onPressed == null) Colors.grey.withOpacity(0.1),
          ],
        ),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white10, width: 1),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              side: const BorderSide(color: Colors.transparent),
              disabledBackgroundColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              minimumSize: const Size(45, 45),
            ),
            onPressed: onPressed,
            child: Center(child: child),
          ),
        ),
      ),
    );
  }
}
