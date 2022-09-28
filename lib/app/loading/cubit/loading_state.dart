part of 'loading_cubit.dart';

@freezed
class LoadingState with _$LoadingState {
  const factory LoadingState.loading(List<String> names) = Loading;
  const factory LoadingState.loaded() = Loaded;

  factory LoadingState.fromJson(Map<String, dynamic> json) => _$LoadingStateFromJson(json);
}
