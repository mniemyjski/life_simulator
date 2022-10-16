import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:richeable/app/stock_market/models/instrument/instrument.dart';

import '../../../../utilities/utilities.dart';

part 'candle.g.dart';

@Collection(ignore: {'props', 'stringify'})
@Name('Stock Market Courses')
class Candle extends Equatable {
  final Id? id;

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
    this.id,
    required this.instrument,
    required this.dateTime,
    required this.open,
    required this.high,
    required this.low,
    required this.close,
  });

  @override
  List<Object> get props => [instrument, dateTime, open, high, low, close];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'instrument': Enums.toText(instrument),
      'dateTime': dateTime.millisecondsSinceEpoch,
      'open': open,
      'high': high,
      'low': low,
      'close': close,
    };
  }

  factory Candle.fromJson(Map<String, dynamic> map) {
    return Candle(
      id: map['id'] as Id,
      instrument: Enums.toEnum(map['instrument'], ENameInstrument.values) as ENameInstrument,
      dateTime: DateTime.fromMillisecondsSinceEpoch(map['dateTime']) as DateTime,
      open: map['open'] as double,
      high: map['high'] as double,
      low: map['low'] as double,
      close: map['close'] as double,
    );
  }
}
