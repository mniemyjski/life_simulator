part of 'candles_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class CandlesState with _$CandlesState {
  const factory CandlesState.initial() = Initial;
  const factory CandlesState.loading() = Loading;
  factory CandlesState.loaded(List<Candle> candles) = Loaded;

  factory CandlesState.fromJson(Map<String, dynamic> json) => _$CandlesStateFromJson(json);
}
