part of 'businesses_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class BusinessesState with _$BusinessesState {
  const factory BusinessesState.initial() = Initial;
  const factory BusinessesState.loading() = Loading;
  factory BusinessesState.loaded(List<Business> businesses) = Loaded;

  factory BusinessesState.fromJson(Map<String, dynamic> json) => _$BusinessesStateFromJson(json);
}
