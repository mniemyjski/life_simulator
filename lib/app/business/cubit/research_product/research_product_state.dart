part of 'research_product_cubit.dart';

@freezed
class ResearchProductState with _$ResearchProductState {
  const factory ResearchProductState.initial() = Initial;
  const factory ResearchProductState.loading() = Loading;
  factory ResearchProductState.none() = None;
  factory ResearchProductState.loaded(Research research) = Loaded;

  factory ResearchProductState.fromJson(Map<String, dynamic> json) =>
      _$ResearchProductStateFromJson(json);
}
