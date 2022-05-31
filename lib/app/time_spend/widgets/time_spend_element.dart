import 'package:flutter/material.dart';

class TimeSpendElement extends StatelessWidget {
  final String name;
  final String valueName;
  final Color? color;
  final int value;

  const TimeSpendElement({
    Key? key,
    required this.name,
    this.color,
    required this.value,
    required this.valueName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        children: [
          Text(name),
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(4.0),
                width: 50,
                child: LinearProgressIndicator(
                  value: value / 24,
                  minHeight: 12,
                  color: color,
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    valueName,
                    style:
                        TextStyle(fontSize: 8, color: Theme.of(context).textTheme.bodyText1!.color),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
