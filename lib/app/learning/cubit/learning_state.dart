part of 'learning_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class LearningState with _$LearningState {
  const factory LearningState.initial() = Initial;
  const factory LearningState.loading() = Loading;
  factory LearningState.loaded(List<Learning> learnings) = Loaded;

  factory LearningState.fromJson(Map<String, dynamic> json) => _$LearningStateFromJson(json);
}
