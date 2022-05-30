import 'package:freezed_annotation/freezed_annotation.dart';

import '../experience/experience_model.dart';

part 'job_model.freezed.dart';
part 'job_model.g.dart';

@freezed
class Job with _$Job {
  const factory Job({
    required String id,
    required String company,
    required String industry,
    required List<Experience> experiences,
  }) = _Job;

  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);
}
