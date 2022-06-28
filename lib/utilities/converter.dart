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
    if (value < 999) return value.toString();
    if (value <= 1000000) return '${(value / 1000).toStringAsFixed(1)} tyś';
    if (value <= 1000000000) return '${(value / 1000000).toStringAsFixed(1)} mln';
    if (value <= 1000000000000) return '${(value / 1000000000).toStringAsFixed(1)} mld';
    return '${(value / 1000000000000).toStringAsFixed(1)} bln';
  }
}
