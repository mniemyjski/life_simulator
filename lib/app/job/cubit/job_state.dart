part of 'job_cubit.dart';

@freezed
class JobState with _$JobState {
  const factory JobState.initial({Job? job, Experience? experience, required List<Job>? jobs}) =
      Initial;
  const factory JobState.loading(List<Job> jobs) = Loading;
  const factory JobState.loaded({Job? job, Experience? experience, required List<Job> jobs}) =
      Loaded;

  factory JobState.fromJson(Map<String, dynamic> json) => _$JobStateFromJson(json);
}
