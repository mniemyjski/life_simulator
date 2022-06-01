part of 'transport_cubit.dart';

@freezed
class TransportState with _$TransportState {
  const factory TransportState.initial() = Initial;
  const factory TransportState.loading() = Loading;
  const factory TransportState.loaded(
      {required Transport? transport, required List<Transport> transports}) = Loaded;

  factory TransportState.fromJson(Map<String, dynamic> json) => _$TransportStateFromJson(json);
}
