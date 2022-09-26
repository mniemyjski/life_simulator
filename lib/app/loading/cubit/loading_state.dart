part of 'loading_cubit.dart';

@freezed
class LoadingState with _$LoadingState {
  const factory LoadingState.initial() = Initial;
  const factory LoadingState.loading() = Loading;
  const factory LoadingState.loaded() = Loaded;

  factory LoadingState.fromJson(Map<String, dynamic> json) => _$LoadingStateFromJson(json);
}
