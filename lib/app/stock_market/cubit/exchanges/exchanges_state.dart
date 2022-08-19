part of 'exchanges_cubit.dart';

@freezed
class ExchangesState with _$ExchangesState {
  const factory ExchangesState.initial() = Initial;
  const factory ExchangesState.loading() = Loading;
  const factory ExchangesState.loaded(List<Exchange> exchanges) = Loaded;

  factory ExchangesState.fromJson(Map<String, dynamic> json) => _$ExchangesStateFromJson(json);
}
