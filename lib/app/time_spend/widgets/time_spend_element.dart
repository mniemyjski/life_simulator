import 'package:flutter/material.dart';

class TimeSpendElement extends StatelessWidget {
  final String name;
  final String valueName;
  final Color? color;
  final int value;
  final int? minValue;

  const TimeSpendElement({
    Key? key,
    required this.name,
    this.color,
    required this.value,
    required this.valueName,
    this.minValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = value > (minValue ?? -1)
        ? Theme.of(context).textTheme.bodyText1!
        : Theme.of(context)
            .textTheme
            .bodyText1!
            .copyWith(color: Colors.red[600], fontWeight: FontWeight.bold);

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
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: LinearProgressIndicator(
                    value: value / 24,
                    minHeight: 12,
                    color: color,
                  ),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    valueName,
                    style: textStyle,
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
