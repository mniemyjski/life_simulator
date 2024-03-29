import 'dart:ui';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final Color textColor;
  final VoidCallback? onPressed;
  final double? borderRadius;

  const CustomButton(
      {Key? key,
      required this.onPressed,
      required this.child,
      this.textColor = Colors.white,
      this.backgroundColor,
      this.borderRadius = 8})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color bg =
        backgroundColor != null ? backgroundColor! : Theme.of(context).scaffoldBackgroundColor;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: const [0.0, 1.0],
          colors: [
            if (onPressed != null) bg.withOpacity(0.6),
            if (onPressed != null) bg.withOpacity(0.1),
            if (onPressed == null) Colors.grey.withOpacity(0.6),
            if (onPressed == null) Colors.grey.withOpacity(0.1),
          ],
        ),
        borderRadius: BorderRadius.circular(borderRadius!),
        border: Border.all(color: Colors.white10, width: 1),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius!),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.transparent),
                disabledBackgroundColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                minimumSize: const Size(45, 45),
                padding: EdgeInsets.zero),
            onPressed: onPressed,
            child: Center(child: child),
          ),
        ),
      ),
    );
  }
}
