import 'dart:math';

import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:richeable/utilities/utilities.dart';

import '../app/stock_market/models/candle/candle.dart';
import '../app/stock_market/models/instrument/instrument.dart';
import '../config/injectable/app_module.dart';
import '../config/injectable/injection.dart';

@lazySingleton
class StockMarketRepository {
  late Isar _isar;

  StockMarketRepository() {
    _isar = getIt<AppModule>().instance;
  }

  Future<Candle> getLast(Instrument instrument) async {
    final result = await _isar.candles
        .where(sort: Sort.desc)
        .instrumentEqualToAnyDateTime(instrument.name)
        .findFirst();

    return result as Candle;
  }

  Future<List<Candle>> getLastYearCandles(DateTime dateTime) async {
    return await _isar.candles
        .filter()
        .dateTimeBetween(dateTime.addDate(years: -1), dateTime)
        .findAll();
  }

  Future<List<Instrument>> firstOneYearGenerate(List<Instrument> instrumentDB) async {
    List<Instrument> newInstruments = [];

    for (var i in instrumentDB) {
      List<Candle> newCandles = [i.lastCandle];
      Instrument newInstrument = i;

      do {
        Candle newCandle;

        newInstrument = _valorization(instrument: newInstrument, candles: newCandles.last);

        if (newCandles.last.dateTime.millisecondsSinceEpoch >
            newInstrument.datTrendEnd.millisecondsSinceEpoch) {
          newInstrument = _randomChangeTrend(instrument: newInstrument, candle: newCandles.last);
        }

        switch (newInstrument.eTypeTrend) {
          case ETypeTrend.stable:
            newCandle = _stable(
              instrument: newInstrument,
              candle: newCandles.last,
              dateTime: newCandles.last.dateTime.add(const Duration(days: 1)),
            );
            break;
          case ETypeTrend.decrease:
            newCandle = _decrease(
              instrument: newInstrument,
              candle: newCandles.last,
              dateTime: newCandles.last.dateTime.add(const Duration(days: 1)),
            );
            break;
          case ETypeTrend.increase:
            newCandle = _increase(
              instrument: newInstrument,
              candle: newCandles.last,
              dateTime: newCandles.last.dateTime.add(const Duration(days: 1)),
            );
            break;
        }

        newCandles.add(newCandle);
      } while (newCandles.last.dateTime.millisecondsSinceEpoch <
          DateTime(18, 01, 01).millisecondsSinceEpoch);

      newInstruments.add(newInstrument.copyWith(lastCandle: newCandles.last));

      await _isar.writeTxn(() async {
        await _isar.candles.putAll(newCandles);
      });
    }
    return newInstruments;
  }

  Future countingInstruments(
      {required List<Instrument> instruments, required DateTime date}) async {
    List<Instrument> newInstruments = [];

    await _isar.writeTxn(() async {
      for (var i in instruments) {
        Instrument newInstrument = i;
        Candle newCandle;

        // Candle lastCandle = newInstrument.lastCandle;
        Candle lastCandle = await getLast(newInstrument);
        newInstrument = _valorization(instrument: newInstrument, candles: lastCandle);

        if (lastCandle.dateTime.millisecondsSinceEpoch >
            newInstrument.datTrendEnd.millisecondsSinceEpoch) {
          newInstrument = _randomChangeTrend(instrument: newInstrument, candle: lastCandle);
        }

        switch (newInstrument.eTypeTrend) {
          case ETypeTrend.stable:
            newCandle = _stable(
              instrument: newInstrument,
              candle: lastCandle,
              dateTime: date,
            );
            break;
          case ETypeTrend.decrease:
            newCandle = _decrease(
              instrument: newInstrument,
              candle: lastCandle,
              dateTime: date,
            );
            break;
          case ETypeTrend.increase:
            newCandle = _increase(
              instrument: newInstrument,
              candle: lastCandle,
              dateTime: date,
            );
            break;
        }

        await _isar.candles.put(newCandle);

        newInstruments.add(newInstrument.copyWith(lastCandle: newCandle));
      }
    });
    return newInstruments;
  }

  Candle _increase(
      {required Instrument instrument, required Candle candle, required DateTime dateTime}) {
    var rng = Random();

    double change = rng.nextInt(5) > 2
        ? (rng.nextDoubleInRange(0, 5) / 100)
        : (-rng.nextDoubleInRange(0, 2) / 100);
    double newClose = candle.close + (candle.close * change);

    return Candle(
      instrument: instrument.name,
      dateTime: dateTime,
      open: candle.close,
      high: newClose + (newClose * (rng.nextDoubleInRange(0, 1) / 100)),
      low: newClose + (newClose * (-rng.nextDoubleInRange(0, 1) / 100)),
      close: newClose,
    );
  }

  Candle _decrease(
      {required Instrument instrument, required Candle candle, required DateTime dateTime}) {
    var rng = Random();

    double change = rng.nextInt(5) > 2
        ? (-rng.nextDoubleInRange(0, 5) / 100)
        : (rng.nextDoubleInRange(0, 2) / 100);
    double newClose = candle.close + (candle.close * change);

    return Candle(
      instrument: instrument.name,
      dateTime: dateTime,
      open: candle.close,
      high: newClose + (newClose * (rng.nextDoubleInRange(0, 1) / 100)),
      low: newClose + (newClose * (-rng.nextDoubleInRange(0, 1) / 100)),
      close: newClose,
    );
  }

  Candle _stable(
      {required Instrument instrument, required Candle candle, required DateTime dateTime}) {
    var rng = Random();

    double change = rng.nextBool()
        ? ((-rng.nextDoubleInRange(1, 2)) / 100)
        : ((rng.nextDoubleInRange(1, 2)) / 100);
    double newClose = candle.close + (candle.close * change);

    return Candle(
      instrument: instrument.name,
      dateTime: dateTime,
      open: candle.close,
      high: newClose + (newClose * (rng.nextDoubleInRange(0, 1) / 100)),
      low: newClose + (newClose * (-rng.nextDoubleInRange(0, 1) / 100)),
      close: newClose,
    );
  }

  Instrument _valorization({required Instrument instrument, required Candle candles}) {
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

  Instrument _randomChangeTrend({required Instrument instrument, required Candle candle}) {
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
