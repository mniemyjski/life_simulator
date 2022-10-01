import 'package:freezed_annotation/freezed_annotation.dart';

part 'instrument.freezed.dart';
part 'instrument.g.dart';

enum ETypeInstrument { crypto, resources, company }

enum ETypeTrend { stable, decrease, increase }

enum ENameInstrument { btc, eth, bnb, hero, dome, oil, gold, silver, tesla, apple }

@Freezed(makeCollectionsUnmodifiable: false)
class Instrument with _$Instrument {
  factory Instrument({
    required String id,
    required ENameInstrument name,
    required ETypeInstrument eTypeInstrument,
    required ETypeTrend eTypeTrend,
    required DateTime datTrendEnd,
    required int potentialIncrease,
    required int potentialDecrease,
    required int potentialStable,
    required double min,
    required double max,
    required double valorization,
    required DateTime lastValorization,
  }) = _Instrument;

  factory Instrument.fromJson(Map<String, dynamic> json) => _$InstrumentFromJson(json);
}
