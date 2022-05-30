part of 'save_cubit.dart';

@freezed
class SaveState with _$SaveState {
  const factory SaveState.initial(bool? save) = Initial;

  const factory SaveState.loaded(bool save) = Loaded;

  factory SaveState.fromJson(Map<String, dynamic> json) => _$SaveStateFromJson(json);
}
