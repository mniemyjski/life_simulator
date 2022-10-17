part of 'instruments_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class InstrumentsState with _$InstrumentsState {
  const factory InstrumentsState.initial() = Initial;
  const factory InstrumentsState.loading() = Loading;
  factory InstrumentsState.loaded(List<Instrument> instruments) = Loaded;

  factory InstrumentsState.fromJson(Map<String, dynamic> json) => _$InstrumentsStateFromJson(json);
}
