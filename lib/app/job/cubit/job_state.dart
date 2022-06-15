part of 'job_cubit.dart';

@freezed
class JobState with _$JobState {
  const factory JobState.initial() = Initial;
  const factory JobState.loading() = Loading;
  const factory JobState.loaded({Job? job, Experience? experience}) = Loaded;

  factory JobState.fromJson(Map<String, dynamic> json) => _$JobStateFromJson(json);
}
