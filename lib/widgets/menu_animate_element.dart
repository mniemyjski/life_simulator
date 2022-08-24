import 'package:flutter/material.dart';

class MenuAnimateElement extends StatelessWidget {
  final bool open;
  final String txt;
  final VoidCallback? onPressed;

  const MenuAnimateElement({Key? key, required this.open, required this.txt, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 300),
      opacity: open ? 1 : 0,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: open ? 140 : 0,
        padding: const EdgeInsets.only(bottom: 4.0),
        child: FloatingActionButton.extended(
          heroTag: null,
          onPressed: onPressed,
          label: Text(txt),
        ),
      ),
    );
  }
}
