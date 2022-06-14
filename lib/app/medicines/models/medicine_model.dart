import 'package:freezed_annotation/freezed_annotation.dart';

part 'medicine_model.freezed.dart';
part 'medicine_model.g.dart';

@freezed
class Medicine with _$Medicine {
  const factory Medicine({
    required String id,
    required String name,
    required double cost,
    required double satisfaction,
    required double health,
    required double tiredness,
    required int duration,
    required int leftDuration,
    @Default(false) active,
  }) = _Medicine;

  factory Medicine.fromJson(Map<String, dynamic> json) => _$MedicineFromJson(json);
}
