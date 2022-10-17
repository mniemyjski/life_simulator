import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:richeable/app/money/models/transaction/transaction_model.dart';
import 'package:richeable/app/stock_market/models/exchange/exchange.dart';
import 'package:richeable/constants/data/instruments_data.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../config/injectable/app_module.dart';
import '../../../config/injectable/injection.dart';
import '../../../constants/data/candles_data.dart';
import '../models/candle/candle.dart';
import '../models/instrument/instrument.dart';
import '../services/stock_market_service.dart';

@lazySingleton
class StockMarketRepository {
  late Isar _isar;

  StockMarketRepository() {
    _isar = getIt<AppModule>().instance;
  }

  Future init() async {
    await _isar.writeTxn(() async {
      await _isar.instruments.putAll(InstrumentsData.init());
      await _isar.candles.putAll(CandlesData.init());
    });
    await _firstOneYearGenerate();
  }

  _firstOneYearGenerate() async {
    List<Instrument> newInstruments = [];
    List<Instrument> instrumentDB = await _isar.instruments.where().findAll();

    for (var i in instrumentDB) {
      List<Candle> newCandles = [await getLastCandle(i.id)];

      Instrument newInstrument = i;

      do {
        Candle newCandle;

        newInstrument =
            StockMarketService.valorization(instrument: newInstrument, candles: newCandles.last);

        if (newCandles.last.dateTime.millisecondsSinceEpoch >
            newInstrument.datTrendEnd.millisecondsSinceEpoch) {
          newInstrument = StockMarketService.randomChangeTrend(
              instrument: newInstrument, candle: newCandles.last);
        }

        switch (newInstrument.eTypeTrend) {
          case ETypeTrend.stable:
            newCandle = StockMarketService.stable(
              instrument: newInstrument,
              candle: newCandles.last,
              dateTime: newCandles.last.dateTime.add(const Duration(days: 1)),
            );
            break;
          case ETypeTrend.decrease:
            newCandle = StockMarketService.decrease(
              instrument: newInstrument,
              candle: newCandles.last,
              dateTime: newCandles.last.dateTime.add(const Duration(days: 1)),
            );
            break;
          case ETypeTrend.increase:
            newCandle = StockMarketService.increase(
              instrument: newInstrument,
              candle: newCandles.last,
              dateTime: newCandles.last.dateTime.add(const Duration(days: 1)),
            );
            break;
        }

        newCandles.add(newCandle);
      } while (newCandles.last.dateTime.millisecondsSinceEpoch <
          DateTime(18, 01, 01).millisecondsSinceEpoch);

      newInstruments.add(newInstrument.copyWith(lastClose: newCandles.last.close));

      await _isar.writeTxn(() async {
        await _isar.candles.putAll(newCandles);
        await _isar.instruments.clear();
        await _isar.instruments.putAll(newInstruments);
      });
    }
  }

  Future counting(DateTime dateTime, int days) async {
    await _isar.writeTxn(() async {
      List<Instrument> newInstruments = [];
      List<Candle> newCandles = [];
      List<Instrument> instruments = await _isar.instruments.where().findAll();

      for (var i in instruments) {
        Instrument newInstrument = i;
        Candle newCandle;
        Candle lastCandle = await getLastCandle(newInstrument.id);

        for (var i = 0; i < days; i++) {
          DateTime date = dateTime.addDate(days: i);
          newInstrument =
              StockMarketService.valorization(instrument: newInstrument, candles: lastCandle);
          if (lastCandle.dateTime.millisecondsSinceEpoch >
              newInstrument.datTrendEnd.millisecondsSinceEpoch) {
            newInstrument =
                StockMarketService.randomChangeTrend(instrument: newInstrument, candle: lastCandle);
          }

          switch (newInstrument.eTypeTrend) {
            case ETypeTrend.stable:
              newCandle = StockMarketService.stable(
                instrument: newInstrument,
                candle: lastCandle,
                dateTime: date,
              );
              break;
            case ETypeTrend.decrease:
              newCandle = StockMarketService.decrease(
                instrument: newInstrument,
                candle: lastCandle,
                dateTime: date,
              );
              break;
            case ETypeTrend.increase:
              newCandle = StockMarketService.increase(
                instrument: newInstrument,
                candle: lastCandle,
                dateTime: date,
              );
              break;
          }

          newCandles.add(newCandle);
          newInstrument = newInstrument.copyWith(lastClose: newCandle.close);
          lastCandle = newCandle;
        }

        newInstruments.add(newInstrument);
      }

      await _isar.candles.putAll(newCandles);
      await _isar.instruments.clear();
      await _isar.instruments.putAll(newInstruments);
    });
  }

  Stream instrumentWatcher() {
    return _isar.instruments.watchLazy();
  }

  Stream exchangesWatcher() {
    return _isar.exchanges.watchLazy();
  }

  Future<String?> buy(
      {required int instrumentId, required double count, required DateTime dateCre}) async {
    Instrument? instrument = await _isar.instruments.get(instrumentId);
    if (instrument == null) return 'error';

    await _isar.writeTxn(() async {
      Exchange exchange = Exchange(
        instrumentId: instrumentId,
        eNameInstrument: instrument.eNameInstrument,
        count: count * 0.99,
        price: instrument.lastClose,
        dateCre: dateCre,
        close: false,
      );

      Transaction transaction = Transaction(
        value: -instrument.lastClose * count,
        eTypeTransactionSource: ETypeTransactionSource.market,
        dateCre: dateCre,
      );

      await _isar.transactions.put(transaction);
      await _isar.exchanges.put(exchange);
    });
    return null;
  }

  sell({required int instrumentId, required double count, required DateTime dateCre}) async {
    await _isar.writeTxn(() async {
      Instrument? instrument = await _isar.instruments.get(instrumentId);
      List<Exchange> oldExchanges = await getAllExchangesForInstrument(instrumentId);

      if (instrument == null) return 'error';

      List<Exchange> result = [];
      double addMoney = 0;
      double tCount = count;

      for (Exchange i in oldExchanges) {
        if (i.count > tCount && tCount > 0) {
          result.add(i.copyWith(count: i.count - tCount));
          tCount -= i.count;
          addMoney += i.count * instrument.lastClose;
        } else if (i.count == tCount && tCount > 0) {
          result.add(i.copyWith(count: 0, close: true));
          addMoney += i.count * instrument.lastClose;
        } else if (i.count < tCount && tCount > 0) {
          result.add(i.copyWith(count: 0, close: true));
          addMoney += i.count * instrument.lastClose;
        } else if (tCount == 0) {
          result.add(i);
        }
      }

      Transaction transaction = Transaction(
        value: addMoney,
        eTypeTransactionSource: ETypeTransactionSource.market,
        dateCre: dateCre,
      );

      await _isar.exchanges.putAll(result);
      await _isar.transactions.put(transaction);
    });
  }

  Future<List<Exchange>> getAllExchangesForInstrument(int instrumentId) async {
    return await _isar.exchanges
        .filter()
        .closeEqualTo(false)
        .instrumentIdEqualTo(instrumentId)
        .findAll();
  }

  Future<List<Instrument>> getAllInstrument() async {
    return await _isar.instruments.where().findAll();
  }

  Future<Candle> getLastCandle(int id) async {
    final result =
        await _isar.candles.where(sort: Sort.desc).instrumentIdEqualToAnyDateTime(id).findFirst();

    return result as Candle;
  }

  Future<List<Candle>> getLastYearCandles(DateTime dateTime) async {
    return await _isar.candles
        .filter()
        .dateTimeBetween(dateTime.addDate(years: -1), dateTime)
        .findAll();
  }
}
