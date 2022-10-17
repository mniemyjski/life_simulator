import 'dart:math';

import 'package:richeable/utilities/utilities.dart';

import '../models/candle/candle.dart';
import '../models/instrument/instrument.dart';

abstract class StockMarketService {
  static Candle increase(
      {required Instrument instrument, required Candle candle, required DateTime dateTime}) {
    var rng = Random();

    double change = rng.nextInt(5) > 2
        ? (rng.nextDoubleInRange(0, 5) / 100)
        : (-rng.nextDoubleInRange(0, 2) / 100);
    double newClose = candle.close + (candle.close * change);

    return Candle(
      instrumentId: instrument.id,
      eNameInstrument: instrument.eNameInstrument,
      dateTime: dateTime,
      open: candle.close,
      high: newClose + (newClose * (rng.nextDoubleInRange(0, 1) / 100)),
      low: newClose + (newClose * (-rng.nextDoubleInRange(0, 1) / 100)),
      close: newClose,
    );
  }

  static Candle decrease(
      {required Instrument instrument, required Candle candle, required DateTime dateTime}) {
    var rng = Random();

    double change = rng.nextInt(5) > 2
        ? (-rng.nextDoubleInRange(0, 5) / 100)
        : (rng.nextDoubleInRange(0, 2) / 100);
    double newClose = candle.close + (candle.close * change);

    return Candle(
      instrumentId: instrument.id,
      eNameInstrument: instrument.eNameInstrument,
      dateTime: dateTime,
      open: candle.close,
      high: newClose + (newClose * (rng.nextDoubleInRange(0, 1) / 100)),
      low: newClose + (newClose * (-rng.nextDoubleInRange(0, 1) / 100)),
      close: newClose,
    );
  }

  static Candle stable(
      {required Instrument instrument, required Candle candle, required DateTime dateTime}) {
    var rng = Random();

    double change = rng.nextBool()
        ? ((-rng.nextDoubleInRange(1, 2)) / 100)
        : ((rng.nextDoubleInRange(1, 2)) / 100);
    double newClose = candle.close + (candle.close * change);

    return Candle(
      instrumentId: instrument.id,
      eNameInstrument: instrument.eNameInstrument,
      dateTime: dateTime,
      open: candle.close,
      high: newClose + (newClose * (rng.nextDoubleInRange(0, 1) / 100)),
      low: newClose + (newClose * (-rng.nextDoubleInRange(0, 1) / 100)),
      close: newClose,
    );
  }

  static Instrument valorization({required Instrument instrument, required Candle candles}) {
    DateTime dateTime = candles.dateTime;
    if (dateTime.millisecondsSinceEpoch >
        instrument.lastValorization.addDate(years: 4).millisecondsSinceEpoch) {
      return instrument.copyWith(
        min: instrument.min * instrument.valorization,
        max: instrument.max * instrument.valorization,
        lastValorization: dateTime,
      );
    } else {
      return instrument;
    }
  }

  static Instrument randomChangeTrend({required Instrument instrument, required Candle candle}) {
    var rng = Random();
    int r = rng.nextInt(
        instrument.potentialIncrease + instrument.potentialDecrease + instrument.potentialStable);
    int duration = rng.nextIntInRange(30, 360);
    int d = instrument.potentialDecrease;
    int i = instrument.potentialIncrease + instrument.potentialDecrease;

    if (candle.close < instrument.min) {
      return instrument.copyWith(
        eTypeTrend: ETypeTrend.increase,
        datTrendEnd: candle.dateTime.addDate(days: duration),
      );
    } else if (candle.close > instrument.max) {
      return instrument.copyWith(
        eTypeTrend: ETypeTrend.decrease,
        datTrendEnd: candle.dateTime.addDate(days: duration),
      );
    } else if (r < d) {
      return instrument.copyWith(
        eTypeTrend: ETypeTrend.decrease,
        datTrendEnd: candle.dateTime.addDate(days: duration),
      );
    } else if (r >= d && r < i) {
      return instrument.copyWith(
        eTypeTrend: ETypeTrend.increase,
        datTrendEnd: candle.dateTime.addDate(days: duration),
      );
    } else {
      return instrument.copyWith(
        eTypeTrend: ETypeTrend.stable,
        datTrendEnd: candle.dateTime.addDate(days: duration),
      );
    }
  }
}
