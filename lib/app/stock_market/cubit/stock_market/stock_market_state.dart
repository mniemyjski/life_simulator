part of 'stock_market_cubit.dart';

@freezed
class StockMarketState with _$StockMarketState {
  const factory StockMarketState.initial() = Initial;
  const factory StockMarketState.loading() = Loading;
  const factory StockMarketState.loaded(List<Instrument> instruments) = Loaded;

  factory StockMarketState.fromJson(Map<String, dynamic> json) => _$StockMarketStateFromJson(json);
}
