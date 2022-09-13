import 'package:flutter/material.dart';

class ButtonElement extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget icon;

  const ButtonElement({Key? key, this.onPressed, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).primaryColor.withOpacity(0.5),
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
        color: Colors.white.withOpacity(0.8),
      ),
    );
  }
}
