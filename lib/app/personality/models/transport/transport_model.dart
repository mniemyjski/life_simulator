import 'package:freezed_annotation/freezed_annotation.dart';

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
    required double cost,
    required double monthlyCost,
    DateTime? dateBuy,
    @Default(0) int bonusToRelax,
    @Default(0) int bonusToSleep,
    @Default(0) int bonusToLearn,
    @Default(0) int commuting,
  }) = _Transport;

  factory Transport.fromJson(Map<String, dynamic> json) => _$TransportFromJson(json);
}
