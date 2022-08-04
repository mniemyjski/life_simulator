import 'package:freezed_annotation/freezed_annotation.dart';

import '../freelance_job/freelance_job.dart';

part 'freelance_model.freezed.dart';
part 'freelance_model.g.dart';

@freezed
class Freelance with _$Freelance {
  const factory Freelance({
    required int fame,
    required List<FreelanceJob> works,
  }) = _Freelance;

  factory Freelance.fromJson(Map<String, dynamic> json) => _$FreelanceFromJson(json);
}
