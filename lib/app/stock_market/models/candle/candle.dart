import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:richeable/app/stock_market/models/instrument/instrument.dart';

part 'candle.g.dart';

@CopyWith()
@JsonSerializable()
@Collection(ignore: {'props', 'stringify'})
@Name('Stock Market Courses')
class Candle extends Equatable {
  final Id id;

  @Index(composite: [CompositeIndex('dateTime')])
  @enumerated
  final ENameInstrument instrument;

  @Index()
  final DateTime dateTime;
  final double open;
  final double high;
  final double low;
  final double close;

  const Candle({
    this.id = Isar.autoIncrement,
    required this.instrument,
    required this.dateTime,
    required this.open,
    required this.high,
    required this.low,
    required this.close,
  });

  @override
  List<Object> get props => [instrument, dateTime, open, high, low, close];

  factory Candle.fromJson(Map<String, dynamic> json) => _$CandleFromJson(json);
  Map<String, dynamic> toJson() => _$CandleToJson(this);
}
