part of 'stock_market_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class StockMarketState with _$StockMarketState {
  const factory StockMarketState.initial() = Initial;
  const factory StockMarketState.loading() = Loading;
  factory StockMarketState.loaded(List<Instrument> instruments, List<Candle> candles) = Loaded;

  factory StockMarketState.fromJson(Map<String, dynamic> json) => _$StockMarketStateFromJson(json);
}
