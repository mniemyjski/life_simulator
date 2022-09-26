part of 'freelance_job_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class FreelanceWorkState with _$FreelanceWorkState {
  const factory FreelanceWorkState.initial() = Initial;
  const factory FreelanceWorkState.loading() = Loading;
  const factory FreelanceWorkState.loaded(List<FreelanceJob> list) = Loaded;

  factory FreelanceWorkState.fromJson(Map<String, dynamic> json) =>
      _$FreelanceWorkStateFromJson(json);
}
