import 'package:freezed_annotation/freezed_annotation.dart';

part 'candle.freezed.dart';
part 'candle.g.dart';

@freezed
class Candle with _$Candle {
  const factory Candle({
    required DateTime dateTime,
    required double open,
    required double high,
    required double low,
    required double close,
  }) = _Candle;

  factory Candle.fromJson(Map<String, dynamic> json) => _$CandleFromJson(json);
}
