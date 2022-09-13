import 'package:flutter/material.dart';

class StatsElement extends StatelessWidget {
  final String name;
  final Color? color;
  final double value;

  const StatsElement({Key? key, required this.name, this.color, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: Row(
        children: [
          Text(name),
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(2.0),
                width: 50,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: LinearProgressIndicator(
                    value: value,
                    minHeight: 8,
                    color: color,
                  ),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '${(value * 100).round()}%',
                    style:
                        TextStyle(fontSize: 7, color: Theme.of(context).textTheme.bodyText1!.color),
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
