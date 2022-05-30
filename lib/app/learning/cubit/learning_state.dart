part of 'learning_cubit.dart';

@freezed
class LearningState with _$LearningState {
  const factory LearningState.initial(List<Learning>? learnings) = Initial;
  const factory LearningState.loading() = Loading;
  const factory LearningState.loaded(List<Learning> learnings) = Loaded;

  factory LearningState.fromJson(Map<String, dynamic> json) => _$LearningStateFromJson(json);
}
