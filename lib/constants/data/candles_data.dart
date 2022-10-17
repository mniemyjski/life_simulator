import '../../app/stock_market/models/candle/candle.dart';
import '../../app/stock_market/models/instrument/instrument.dart';

abstract class CandlesData {
  static List<Candle> init() {
    return [
      Candle(
        instrumentId: 1,
        eNameInstrument: ENameInstrument.btc,
        dateTime: DateTime(17, 1, 1),
        open: 3543,
        high: 3543,
        low: 3543,
        close: 3543,
      ),
      Candle(
        instrumentId: 2,
        eNameInstrument: ENameInstrument.eth,
        dateTime: DateTime(17, 1, 1),
        open: 500,
        high: 500,
        low: 500,
        close: 500,
      ),
      Candle(
        instrumentId: 3,
        eNameInstrument: ENameInstrument.bnb,
        dateTime: DateTime(17, 1, 1),
        open: 150,
        high: 150,
        low: 150,
        close: 150,
      ),
      Candle(
        instrumentId: 4,
        eNameInstrument: ENameInstrument.hero,
        dateTime: DateTime(17, 1, 1),
        open: 0.01,
        high: 0.01,
        low: 0.01,
        close: 0.01,
      ),
      Candle(
        instrumentId: 5,
        eNameInstrument: ENameInstrument.dome,
        dateTime: DateTime(17, 1, 1),
        open: 0.01,
        high: 0.01,
        low: 0.01,
        close: 0.01,
      ),
      Candle(
        instrumentId: 6,
        eNameInstrument: ENameInstrument.oil,
        dateTime: DateTime(17, 1, 1),
        open: 100,
        high: 100,
        low: 100,
        close: 100,
      ),
      Candle(
        instrumentId: 7,
        eNameInstrument: ENameInstrument.gold,
        dateTime: DateTime(17, 1, 1),
        open: 1500,
        high: 1500,
        low: 1500,
        close: 1500,
      ),
      Candle(
        instrumentId: 8,
        eNameInstrument: ENameInstrument.silver,
        dateTime: DateTime(17, 1, 1),
        open: 500,
        high: 500,
        low: 500,
        close: 500,
      ),
      Candle(
        instrumentId: 9,
        eNameInstrument: ENameInstrument.tesla,
        dateTime: DateTime(17, 1, 1),
        open: 400,
        high: 400,
        low: 400,
        close: 400,
      ),
      Candle(
        instrumentId: 10,
        eNameInstrument: ENameInstrument.apple,
        dateTime: DateTime(17, 1, 1),
        open: 400,
        high: 400,
        low: 400,
        close: 400,
      ),
    ];
  }
}
