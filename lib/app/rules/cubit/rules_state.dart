part of 'rules_cubit.dart';

@freezed
class RulesState with _$RulesState {
  const factory RulesState.initial() = Initial;
  const factory RulesState.loading() = Loading;
  const factory RulesState.loaded(bool endGame) = Loaded;

  factory RulesState.fromJson(Map<String, dynamic> json) => _$RulesStateFromJson(json);
}
