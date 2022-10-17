import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import '../instrument/instrument.dart';

part 'exchange.g.dart';

@CopyWith()
@JsonSerializable()
@Collection(ignore: {'props', 'stringify'})
@Name('Exchanges')
class Exchange extends Equatable {
  final Id id;
  final int instrumentId;
  @enumerated
  final ENameInstrument eNameInstrument;
  final double count;
  final double price;
  final DateTime dateCre;
  final bool close;

  const Exchange({
    this.id = Isar.autoIncrement,
    required this.instrumentId,
    required this.eNameInstrument,
    required this.count,
    required this.price,
    required this.dateCre,
    this.close = false,
  });

  @override
  List<Object> get props => [
        instrumentId,
        eNameInstrument,
        count,
        price,
        dateCre,
        close,
      ];

  factory Exchange.fromJson(Map<String, dynamic> json) => _$ExchangeFromJson(json);
  Map<String, dynamic> toJson() => _$ExchangeToJson(this);
}
