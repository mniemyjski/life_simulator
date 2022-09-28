part of 'freelance_job_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class FreelanceJobState with _$FreelanceJobState {
  const factory FreelanceJobState.initial() = Initial;
  const factory FreelanceJobState.loading() = Loading;
  const factory FreelanceJobState.loaded(List<FreelanceJob> list) = Loaded;

  factory FreelanceJobState.fromJson(Map<String, dynamic> json) =>
      _$FreelanceJobStateFromJson(json);
}
