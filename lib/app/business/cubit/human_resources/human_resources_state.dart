part of 'human_resources_cubit.dart';

@Freezed()
class HumanResourcesState with _$HumanResourcesState {
  const factory HumanResourcesState.initial() = Initial;
  const factory HumanResourcesState.loading() = Loading;
  const factory HumanResourcesState.loaded() = Loaded;

  factory HumanResourcesState.fromJson(Map<String, dynamic> json) =>
      _$HumanResourcesStateFromJson(json);
}
