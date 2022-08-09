import 'dart:math';

import 'utilities.dart';

extension DateT on DateTime {
  DateTime onlyDate() => DateTime(year, month, day);
  String onlyDateToString() {
    if (year < 99) return DateFormat('yy/MM/dd').format(DateTime(year, month, day));
    if (year < 999) return DateFormat('yyy/MM/dd').format(DateTime(year, month, day));
    if (year < 9999) return DateFormat('yyyy/MM/dd').format(DateTime(year, month, day));
    throw 'error';
  }
}

extension RandomT on Random {
  int nextIntInRange(int min, int max) => min + Random().nextInt(max - min);
  double nextDoubleInRange(num start, num end) => Random().nextDouble() * (end - start) + start;
}

extension DoubleT on double {
  toMoney() {
    double test = this < 0 ? this * -1 : this;

    if (test == 0) return '${toStringAsFixed(0)}\$';
    if (test < 1) return '${toStringAsFixed(6)}\$';
    if (test < 999) return '${toStringAsFixed(2)}\$';
    if (test <= 1000000) return '${(this / 1000).toStringAsFixed(2)} tyś \$';
    if (test <= 1000000000) return '${(this / 1000000).toStringAsFixed(2)} mln \$';
    if (test <= 1000000000000) return '${(this / 1000000000).toStringAsFixed(2)} mld \$';
    return '${(this / 1000000000000).toStringAsFixed(2)} bln \$';
  }
}
