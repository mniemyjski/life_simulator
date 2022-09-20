import 'dart:math';

import 'package:jiffy/jiffy.dart';

import 'utilities.dart';

extension DateT on DateTime {
  DateTime onlyDate() => DateTime(year, month, day);
  String onlyDateToString() {
    if (year < 99) return DateFormat('yy/MM/dd').format(DateTime(year, month, day));
    if (year < 999) return DateFormat('yyy/MM/dd').format(DateTime(year, month, day));
    if (year < 9999) return DateFormat('yyyy/MM/dd').format(DateTime(year, month, day));
    throw 'error';
  }

  DateTime addDate({int days = 0, int weeks = 0, int months = 0, int years = 0}) {
    DateTime newDate = Jiffy(onlyDate())
        .add(days: days, weeks: weeks, months: months, years: years)
        .dateTime
        .onlyDate();
    if (newDate == onlyDate()) {
      newDate = Jiffy(onlyDate())
          .add(days: days + 1, weeks: weeks, months: months, years: years)
          .dateTime
          .onlyDate();
    }

    return newDate;
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

extension RandomT on Random {
  int nextIntInRange(int min, int max) => min + Random().nextInt(max - min);
  double nextDoubleInRange(num start, num end) => Random().nextDouble() * (end - start) + start;
}

extension DoubleT on double {
  toMoney() {
    double test = this < 0 ? this * -1 : this;
    String minus = this < 0 ? '-' : '';

    if (test == 0) return '$minus\$${test.toStringAsFixed(0)}';
    if (test < 1) return '$minus\$${test.toStringAsFixed(6)}';
    if (test < 999) return '$minus\$${test.toStringAsFixed(2)}';
    if (test < 1000000) return '$minus\$${(test / 1000).toStringAsFixed(1)} t';
    if (test <= 1000000000) return '$minus\$${(test / 1000000).toStringAsFixed(2)} mln';
    if (test <= 1000000000000) return '$minus\$${(test / 1000000000).toStringAsFixed(2)} mld';
    return '$minus\$${(test / 1000000000000).toStringAsFixed(2)} bln';
  }

  toExp() {
    double test = this < 0 ? this * -1 : this;
    String minus = this < 0 ? '-' : '';

    if (test == 0) return '$minus${test.toStringAsFixed(0)}';
    if (test < 1) return '$minus${test.toStringAsFixed(6)}';
    if (test < 999) return '$minus${test.toStringAsFixed(2)}';
    if (test < 1000000) return '$minus${(test / 1000).toStringAsFixed(1)} t';
    if (test <= 1000000000) return '$minus${(test / 1000000).toStringAsFixed(2)} mln';
    if (test <= 1000000000000) return '$minus${(test / 1000000000).toStringAsFixed(2)} mld';
    return '$minus\$${(test / 1000000000000).toStringAsFixed(2)} bln';
  }
}
