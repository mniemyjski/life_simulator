import 'package:freezed_annotation/freezed_annotation.dart';

import '../candle/candle.dart';

part 'instrument.freezed.dart';
part 'instrument.g.dart';

enum ETypeInstrument { crypto, resources, company }

enum ETypeTrend { stable, decrease, increase }

@Freezed(makeCollectionsUnmodifiable: false)
class Instrument with _$Instrument {
  factory Instrument({
    required String id,
    required String name,
    required ETypeInstrument eTypeInstrument,
    required List<Candle> candles,
    required ETypeTrend eTypeTrend,
    required DateTime datTrendEnd,
    required int potentialIncrease,
    required int potentialDecrease,
    required int potentialStable,
    required double min,
    required double max,
    required double valorization,
  }) = _Instrument;

  factory Instrument.fromJson(Map<String, dynamic> json) => _$InstrumentFromJson(json);
}
