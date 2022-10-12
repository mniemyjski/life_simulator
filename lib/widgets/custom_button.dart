import 'dart:ui';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final Color textColor;
  final VoidCallback? onPressed;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;

  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.textColor = Colors.white,
    this.backgroundColor,
    this.borderRadius,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.zero,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shadowColor: Colors.black,
              side: BorderSide(
                color: Colors.black.withOpacity(0.3),
              ),
              disabledBackgroundColor: Colors.grey.withOpacity(0.5),
              backgroundColor: backgroundColor?.withOpacity(0.5) ??
                  Theme.of(context).primaryColor.withOpacity(0.5),
              minimumSize: const Size(45, 45),
              // padding: const EdgeInsets.symmetric(horizontal: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 2)),
              ),
            ),
            onPressed: onPressed,
            child: Center(child: child),
          ),
        ),
      ),
    );
  }
}
