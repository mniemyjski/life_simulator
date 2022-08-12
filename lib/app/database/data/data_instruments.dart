import 'package:life_simulator/app/stock_market/models/candle/candle.dart';
import 'package:uuid/uuid.dart';

import '../../stock_market/models/instrument/instrument.dart';

class DataInstruments {
  static List<Instrument> db() {
    var uuid = const Uuid();
    return [
      Instrument(
        id: uuid.v1(),
        name: 'BTC',
        eTypeInstrument: ETypeInstrument.crypto,
        eTypeTrend: ETypeTrend.stable,
        datTrendEnd: DateTime(17, 11, 1),
        candles: [
          Candle(
            dateTime: DateTime(17, 11, 1),
            open: 3543,
            high: 3543,
            low: 3543,
            close: 3543,
          ),
        ],
        potentialIncrease: 6,
        potentialDecrease: 4,
        potentialStable: 20,
        min: 3543,
        max: 30000,
        valorization: 1.4,
      ),
      Instrument(
        id: uuid.v1(),
        name: 'ETH',
        eTypeInstrument: ETypeInstrument.crypto,
        eTypeTrend: ETypeTrend.stable,
        datTrendEnd: DateTime(17, 11, 1),
        candles: [
          Candle(
            dateTime: DateTime(17, 11, 1),
            open: 500,
            high: 500,
            low: 500,
            close: 500,
          ),
        ],
        potentialIncrease: 6,
        potentialDecrease: 4,
        potentialStable: 20,
        min: 500,
        max: 2000,
        valorization: 1.4,
      ),
      Instrument(
        id: uuid.v1(),
        name: 'BNB',
        eTypeInstrument: ETypeInstrument.crypto,
        eTypeTrend: ETypeTrend.stable,
        datTrendEnd: DateTime(17, 11, 1),
        candles: [
          Candle(
            dateTime: DateTime(17, 11, 1),
            open: 150,
            high: 150,
            low: 150,
            close: 150,
          ),
        ],
        potentialIncrease: 6,
        potentialDecrease: 4,
        potentialStable: 20,
        min: 150,
        max: 600,
        valorization: 1.4,
      ),
      Instrument(
        id: uuid.v1(),
        name: 'HERO',
        eTypeInstrument: ETypeInstrument.crypto,
        eTypeTrend: ETypeTrend.stable,
        datTrendEnd: DateTime(17, 11, 1),
        candles: [
          Candle(
            dateTime: DateTime(17, 11, 1),
            open: 0.01,
            high: 0.01,
            low: 0.01,
            close: 0.01,
          ),
        ],
        potentialIncrease: 6,
        potentialDecrease: 4,
        potentialStable: 20,
        min: 0.01,
        max: 0.26,
        valorization: 1.4,
      ),
      Instrument(
        id: uuid.v1(),
        name: 'DOME',
        eTypeInstrument: ETypeInstrument.crypto,
        eTypeTrend: ETypeTrend.stable,
        datTrendEnd: DateTime(17, 11, 1),
        candles: [
          Candle(
            dateTime: DateTime(17, 11, 1),
            open: 0.01,
            high: 0.01,
            low: 0.01,
            close: 0.01,
          ),
        ],
        potentialIncrease: 6,
        potentialDecrease: 4,
        potentialStable: 20,
        min: 0.01,
        max: 0.26,
        valorization: 1.4,
      ),
      Instrument(
        id: uuid.v1(),
        name: 'OIL',
        eTypeInstrument: ETypeInstrument.resource,
        eTypeTrend: ETypeTrend.stable,
        datTrendEnd: DateTime(17, 11, 1),
        candles: [
          Candle(
            dateTime: DateTime(17, 11, 1),
            open: 100,
            high: 100,
            low: 100,
            close: 100,
          ),
        ],
        potentialIncrease: 1,
        potentialDecrease: 1,
        potentialStable: 10,
        min: 80,
        max: 200,
        valorization: 1.05,
      ),
      Instrument(
        id: uuid.v1(),
        name: 'GOLD',
        eTypeInstrument: ETypeInstrument.resource,
        eTypeTrend: ETypeTrend.stable,
        datTrendEnd: DateTime(17, 11, 1),
        candles: [
          Candle(
            dateTime: DateTime(17, 11, 1),
            open: 1500,
            high: 1500,
            low: 1500,
            close: 1500,
          ),
        ],
        potentialIncrease: 0,
        potentialDecrease: 0,
        potentialStable: 10,
        min: 1400,
        max: 2200,
        valorization: 1.05,
      ),
      Instrument(
        id: uuid.v1(),
        name: 'SILVER',
        eTypeInstrument: ETypeInstrument.resource,
        eTypeTrend: ETypeTrend.stable,
        datTrendEnd: DateTime(17, 11, 1),
        candles: [
          Candle(
            dateTime: DateTime(17, 11, 1),
            open: 500,
            high: 500,
            low: 500,
            close: 500,
          ),
        ],
        potentialIncrease: 0,
        potentialDecrease: 0,
        potentialStable: 10,
        min: 500,
        max: 1000,
        valorization: 1.05,
      ),
      Instrument(
        id: uuid.v1(),
        name: 'TESLA',
        eTypeInstrument: ETypeInstrument.company,
        eTypeTrend: ETypeTrend.stable,
        datTrendEnd: DateTime(17, 11, 1),
        candles: [
          Candle(
            dateTime: DateTime(17, 11, 1),
            open: 400,
            high: 400,
            low: 400,
            close: 400,
          ),
        ],
        potentialIncrease: 2,
        potentialDecrease: 2,
        potentialStable: 10,
        min: 300,
        max: 600,
        valorization: 1.05,
      ),
      Instrument(
        id: uuid.v1(),
        name: 'APPLE',
        eTypeInstrument: ETypeInstrument.company,
        eTypeTrend: ETypeTrend.stable,
        datTrendEnd: DateTime(17, 11, 1),
        candles: [
          Candle(
            dateTime: DateTime(17, 11, 1),
            open: 400,
            high: 400,
            low: 400,
            close: 400,
          ),
        ],
        potentialIncrease: 2,
        potentialDecrease: 2,
        potentialStable: 10,
        min: 300,
        max: 600,
        valorization: 1.05,
      ),
    ];
  }
}