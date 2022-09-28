import 'dart:math';

import 'package:richeable/utilities/utilities.dart';

import '../models/candle/candle.dart';
import '../models/instrument/instrument.dart';

abstract class StockMarketServices {
  static firstOneYearGenerate(List<Instrument> instrumentDB) {
    List<Instrument> newInstruments = [];

    for (var i in instrumentDB) {
      List<Candle> newCandles = List.from(i.candles);
      Instrument newInstrument = i;

      do {
        Candle newCandle;

        newInstrument = _valorization(newInstrument.copyWith(candles: newCandles));

        if (newCandles.last.dateTime.millisecondsSinceEpoch >
            newInstrument.datTrendEnd.millisecondsSinceEpoch) {
          newInstrument = _randomChangeTrend(newInstrument, newCandles.last.dateTime);
        }

        switch (newInstrument.eTypeTrend) {
          case ETypeTrend.stable:
            newCandle = _stable(
              candles: newCandles,
              dateTime: newCandles.last.dateTime.add(const Duration(days: 1)),
            );
            break;
          case ETypeTrend.decrease:
            newCandle = _decrease(
              candles: newCandles,
              dateTime: newCandles.last.dateTime.add(const Duration(days: 1)),
            );
            break;
          case ETypeTrend.increase:
            newCandle = _increase(
              candles: newCandles,
              dateTime: newCandles.last.dateTime.add(const Duration(days: 1)),
            );
            break;
        }

        newCandles.add(newCandle);
      } while (newCandles.last.dateTime.millisecondsSinceEpoch <
          DateTime(18, 01, 01).millisecondsSinceEpoch);

      newInstruments.add(newInstrument.copyWith(candles: newCandles));
    }
    return newInstruments;
  }

  static countingInstrument({required List<Instrument> instruments, required DateTime date}) {
    List<Instrument> newInstruments = [];

    for (var i in instruments) {
      Instrument newInstrument = i;
      Candle newCandle;

      newInstrument = _valorization(newInstrument);

      if (newInstrument.candles.last.dateTime.millisecondsSinceEpoch >
          newInstrument.datTrendEnd.millisecondsSinceEpoch) {
        newInstrument = _randomChangeTrend(newInstrument, newInstrument.candles.last.dateTime);
      }

      switch (newInstrument.eTypeTrend) {
        case ETypeTrend.stable:
          newCandle = _stable(
            candles: newInstrument.candles,
            dateTime: date,
          );
          break;
        case ETypeTrend.decrease:
          newCandle = _decrease(
            candles: newInstrument.candles,
            dateTime: date,
          );
          break;
        case ETypeTrend.increase:
          newCandle = _increase(
            candles: newInstrument.candles,
            dateTime: date,
          );
          break;
      }

      newInstrument.candles
        ..removeAt(0)
        ..add(newCandle);
      newInstruments.add(newInstrument);
    }
    return newInstruments;
  }

  static Candle _increase({required List<Candle> candles, required DateTime dateTime}) {
    var rng = Random();

    double change = rng.nextInt(5) > 2
        ? (rng.nextDoubleInRange(0, 5) / 100)
        : (-rng.nextDoubleInRange(0, 2) / 100);
    double newClose = candles.last.close + (candles.last.close * change);

    return Candle(
      dateTime: dateTime,
      open: candles.last.close,
      high: newClose + (newClose * (rng.nextDoubleInRange(0, 1) / 100)),
      low: newClose + (newClose * (-rng.nextDoubleInRange(0, 1) / 100)),
      close: newClose,
    );
  }

  static Candle _decrease({required List<Candle> candles, required DateTime dateTime}) {
    var rng = Random();

    double change = rng.nextInt(5) > 2
        ? (-rng.nextDoubleInRange(0, 5) / 100)
        : (rng.nextDoubleInRange(0, 2) / 100);
    double newClose = candles.last.close + (candles.last.close * change);

    return Candle(
      dateTime: dateTime,
      open: candles.last.close,
      high: newClose + (newClose * (rng.nextDoubleInRange(0, 1) / 100)),
      low: newClose + (newClose * (-rng.nextDoubleInRange(0, 1) / 100)),
      close: newClose,
    );
  }

  static Candle _stable({required List<Candle> candles, required DateTime dateTime}) {
    var rng = Random();

    double change = rng.nextBool()
        ? ((-rng.nextDoubleInRange(1, 2)) / 100)
        : ((rng.nextDoubleInRange(1, 2)) / 100);
    double newClose = candles.last.close + (candles.last.close * change);

    return Candle(
      dateTime: dateTime,
      open: candles.last.close,
      high: newClose + (newClose * (rng.nextDoubleInRange(0, 1) / 100)),
      low: newClose + (newClose * (-rng.nextDoubleInRange(0, 1) / 100)),
      close: newClose,
    );
  }

  static Instrument _valorization(Instrument instrument) {
    DateTime dateTime = instrument.candles.last.dateTime.onlyDate();
    if (dateTime == DateTime(dateTime.year, 1, 1)) {
      return instrument.copyWith(
          min: instrument.min * instrument.valorization,
          max: instrument.max * instrument.valorization);
    } else {
      return instrument;
    }
  }

  static Instrument _randomChangeTrend(Instrument instrument, DateTime dateTime) {
    var rng = Random();
    int r = rng.nextInt(
        instrument.potentialIncrease + instrument.potentialDecrease + instrument.potentialStable);
    int d = instrument.potentialDecrease;
    int i = instrument.potentialIncrease + instrument.potentialDecrease;

    if (instrument.candles.last.close < instrument.min) {
      return instrument.copyWith(
          eTypeTrend: ETypeTrend.increase,
          datTrendEnd: dateTime.add(Duration(days: rng.nextInt(360))));
    } else if (instrument.candles.last.close > instrument.max) {
      return instrument.copyWith(
          eTypeTrend: ETypeTrend.decrease,
          datTrendEnd: dateTime.add(Duration(days: rng.nextInt(360))));
    } else if (r < d) {
      return instrument.copyWith(
          eTypeTrend: ETypeTrend.decrease,
          datTrendEnd: dateTime.add(Duration(days: rng.nextInt(360))));
    } else if (r >= d && r < i) {
      return instrument.copyWith(
          eTypeTrend: ETypeTrend.increase,
          datTrendEnd: dateTime.add(Duration(days: rng.nextInt(360))));
    } else {
      return instrument.copyWith(
          eTypeTrend: ETypeTrend.stable,
          datTrendEnd: dateTime.add(Duration(days: rng.nextInt(360))));
    }
  }
}
