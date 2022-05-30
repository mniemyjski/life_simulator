import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:life_simulator/app/date/models/date_game_model.dart';

part 'used_model.freezed.dart';
part 'used_model.g.dart';

@freezed
class Used with _$Used {
  const factory Used({
    required String id,
    required DateGame datCre,
    required int hours,
    required String source,
    required String int,
  }) = _Busy;

  factory Used.fromJson(Map<String, dynamic> json) => _$UsedFromJson(json);
}
