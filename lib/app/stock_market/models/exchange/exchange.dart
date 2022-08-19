import 'package:freezed_annotation/freezed_annotation.dart';

import '../instrument/instrument.dart';

part 'exchange.freezed.dart';
part 'exchange.g.dart';

@freezed
class Exchange with _$Exchange {
  const factory Exchange({
    required String id,
    required Instrument instrument,
    required double count,
    required DateTime datCre,
    @Default(false) bool close,
  }) = _Exchange;

  factory Exchange.fromJson(Map<String, dynamic> json) => _$ExchangeFromJson(json);
}
