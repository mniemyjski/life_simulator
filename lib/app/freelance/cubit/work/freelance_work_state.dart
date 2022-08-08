part of 'freelance_work_cubit.dart';

@freezed
class FreelanceWorkState with _$FreelanceWorkState {
  const factory FreelanceWorkState.initial() = Initial;
  const factory FreelanceWorkState.loading() = Loading;
  const factory FreelanceWorkState.loaded(List<FreelanceWork> list) = Loaded;

  factory FreelanceWorkState.fromJson(Map<String, dynamic> json) =>
      _$FreelanceWorkStateFromJson(json);
}
