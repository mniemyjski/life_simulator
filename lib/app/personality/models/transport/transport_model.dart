import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:life_simulator/app/date/models/date_game_model.dart';

part 'transport_model.freezed.dart';
part 'transport_model.g.dart';

enum ETypeTransport { publicTransport, car }

@freezed
class Transport with _$Transport {
  const factory Transport({
    required String id,
    required String name,
    required String brand,
    required ETypeTransport eTypeTransport,
    required int cost,
    required int monthlyCost,
    DateGame? dateBuy,
    @Default(0) int bonusToRelax,
    @Default(0) int bonusToSleep,
    @Default(0) int bonusToLearn,
    @Default(0) int commuting,
  }) = _Transport;

  factory Transport.fromJson(Map<String, dynamic> json) => _$TransportFromJson(json);
}
