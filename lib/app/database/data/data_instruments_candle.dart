import '../../stock_market/models/candle/candle.dart';
import '../../stock_market/models/instrument/instrument.dart';

abstract class DataCandle {
  static List<Candle> db() {
    return [
      Candle(
        instrument: ENameInstrument.btc,
        dateTime: DateTime(17, 1, 1),
        open: 3543,
        high: 3543,
        low: 3543,
        close: 3543,
      ),
      Candle(
        instrument: ENameInstrument.eth,
        dateTime: DateTime(17, 1, 1),
        open: 500,
        high: 500,
        low: 500,
        close: 500,
      ),
      Candle(
        instrument: ENameInstrument.bnb,
        dateTime: DateTime(17, 1, 1),
        open: 150,
        high: 150,
        low: 150,
        close: 150,
      ),
      Candle(
        instrument: ENameInstrument.hero,
        dateTime: DateTime(17, 1, 1),
        open: 0.01,
        high: 0.01,
        low: 0.01,
        close: 0.01,
      ),
      Candle(
        instrument: ENameInstrument.dome,
        dateTime: DateTime(17, 1, 1),
        open: 0.01,
        high: 0.01,
        low: 0.01,
        close: 0.01,
      ),
      Candle(
        instrument: ENameInstrument.oil,
        dateTime: DateTime(17, 1, 1),
        open: 100,
        high: 100,
        low: 100,
        close: 100,
      ),
      Candle(
        instrument: ENameInstrument.gold,
        dateTime: DateTime(17, 1, 1),
        open: 1500,
        high: 1500,
        low: 1500,
        close: 1500,
      ),
      Candle(
        instrument: ENameInstrument.silver,
        dateTime: DateTime(17, 1, 1),
        open: 500,
        high: 500,
        low: 500,
        close: 500,
      ),
      Candle(
        instrument: ENameInstrument.tesla,
        dateTime: DateTime(17, 1, 1),
        open: 400,
        high: 400,
        low: 400,
        close: 400,
      ),
      Candle(
        instrument: ENameInstrument.apple,
        dateTime: DateTime(17, 1, 1),
        open: 400,
        high: 400,
        low: 400,
        close: 400,
      ),
    ];
  }
}
