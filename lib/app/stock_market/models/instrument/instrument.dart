import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'instrument.g.dart';

enum ETypeInstrument { crypto, resources, company }

enum ETypeTrend { stable, decrease, increase }

enum ENameInstrument { btc, eth, bnb, hero, dome, oil, gold, silver, tesla, apple }

@CopyWith()
@JsonSerializable()
@Collection(ignore: {'props', 'stringify'})
@Name('Instruments')
class Instrument extends Equatable {
  final Id id;
  @enumerated
  final ENameInstrument eNameInstrument;
  @enumerated
  final ETypeInstrument eTypeInstrument;
  @enumerated
  final ETypeTrend eTypeTrend;
  final DateTime datTrendEnd;
  final int potentialIncrease;
  final int potentialDecrease;
  final int potentialStable;
  final double min;
  final double max;
  final double valorization;
  final DateTime lastValorization;
  final double lastClose;

  const Instrument({
    this.id = Isar.autoIncrement,
    required this.eNameInstrument,
    required this.eTypeInstrument,
    required this.eTypeTrend,
    required this.datTrendEnd,
    required this.potentialIncrease,
    required this.potentialDecrease,
    required this.potentialStable,
    required this.min,
    required this.max,
    required this.valorization,
    required this.lastValorization,
    this.lastClose = 0,
  });

  @override
  List<Object> get props => [
        eNameInstrument,
        eTypeInstrument,
        eTypeTrend,
        datTrendEnd,
        potentialIncrease,
        potentialDecrease,
        potentialStable,
        min,
        max,
        valorization,
        lastValorization,
        lastClose,
      ];

  factory Instrument.fromJson(Map<String, dynamic> json) => _$InstrumentFromJson(json);
  Map<String, dynamic> toJson() => _$InstrumentToJson(this);
}
