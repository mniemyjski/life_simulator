part of 'test_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class TestState with _$TestState {
  const factory TestState.initial() = Initial;
  const factory TestState.loading() = Loading;
  factory TestState.loaded() = Loaded;

  factory TestState.fromJson(Map<String, dynamic> json) => _$TestStateFromJson(json);
}
