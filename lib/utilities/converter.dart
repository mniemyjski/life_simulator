import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

class DateTimeConverter implements JsonConverter<DateTime, int> {
  const DateTimeConverter();

  @override
  DateTime fromJson(int json) => DateTime.fromMillisecondsSinceEpoch(int.parse(jsonEncode(json)));

  @override
  int toJson(DateTime data) => jsonDecode(data.millisecondsSinceEpoch.toString());
}
