import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_game_model.freezed.dart';
part 'date_game_model.g.dart';

@freezed
class DateGame with _$DateGame {
  const factory DateGame({
    required int year,
    required int month,
    required int day,
  }) = _DateGame;

  factory DateGame.fromJson(Map<String, dynamic> json) => _$DateGameFromJson(json);
}
