part of 'freelance_done_cubit.dart';

@freezed
class FreelanceDoneState with _$FreelanceDoneState {
  const factory FreelanceDoneState.initial() = Initial;
  const factory FreelanceDoneState.loading() = Loading;
  const factory FreelanceDoneState.loaded(List<FreelanceDone> freelances) = Loaded;

  factory FreelanceDoneState.fromJson(Map<String, dynamic> json) =>
      _$FreelanceDoneStateFromJson(json);
}
