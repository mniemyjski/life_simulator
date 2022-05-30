part of 'date_cubit.dart';

@freezed
class DateState with _$DateState {
  const factory DateState.initial(DateGame? dateGame) = Initial;
  const factory DateState.loading() = Loading;
  const factory DateState.loaded(DateGame dateGame) = Loaded;

  factory DateState.fromJson(Map<String, dynamic> json) => _$DateStateFromJson(json);
}
