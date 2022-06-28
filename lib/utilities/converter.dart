import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

class DateTimeConverter implements JsonConverter<DateTime, int> {
  const DateTimeConverter();

  @override
  DateTime fromJson(int json) => DateTime.fromMillisecondsSinceEpoch(int.parse(jsonEncode(json)));

  @override
  int toJson(DateTime data) => jsonDecode(data.millisecondsSinceEpoch.toString());
}

abstract class Converter {
  static String numberToString(double value) {
    double test = value < 0 ? value * -1 : value;

    if (test < 999) return value.toString();
    if (test <= 1000000) return '${(value / 1000).toStringAsFixed(1)} tyś';
    if (test <= 1000000000) return '${(value / 1000000).toStringAsFixed(1)} mln';
    if (test <= 1000000000000) return '${(value / 1000000000).toStringAsFixed(1)} mld';
    return '${(value / 1000000000000).toStringAsFixed(1)} bln';
  }
}
