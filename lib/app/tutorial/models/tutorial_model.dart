import 'package:freezed_annotation/freezed_annotation.dart';

part 'tutorial_model.freezed.dart';
part 'tutorial_model.g.dart';

@freezed
class Tutorial with _$Tutorial {
  const factory Tutorial({
    @Default(false) bool main,
  }) = _Tutorial;

  factory Tutorial.fromJson(Map<String, dynamic> json) => _$TutorialFromJson(json);
}
