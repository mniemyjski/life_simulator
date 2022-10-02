import 'dart:math';

import 'package:currency_formatter/currency_formatter.dart';
import 'package:jiffy/jiffy.dart';

import 'utilities.dart';

extension DateT on DateTime {
  DateTime onlyDate() => DateTime(year, month, day);
  DateTime monthDate() => DateTime(year, month, 1);
  DateTime yearDate() => DateTime(year, 1, 1);
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
    double value = this < 0 ? this * -1 : this;
    String minus = this < 0 ? '-' : '';

    return minus +
        CurrencyFormatter.format(
          value,
          CurrencyFormatterSettings(
            symbol: '\$',
            symbolSide: SymbolSide.left,
            thousandSeparator: ' ',
            decimalSeparator: ',',
            symbolSeparator: '',
          ),
          compact: true,
        );
  }

  toExp() {
    double value = this < 0 ? this * -1 : this;
    String minus = this < 0 ? '-' : '';

    return minus +
        CurrencyFormatter.format(
          value,
          CurrencyFormatterSettings(
            symbol: '',
            symbolSide: SymbolSide.left,
            thousandSeparator: ' ',
            decimalSeparator: ',',
            symbolSeparator: '',
          ),
        );
  }
}
