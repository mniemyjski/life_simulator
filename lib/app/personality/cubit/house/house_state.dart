part of 'house_cubit.dart';

@freezed
class HouseState with _$HouseState {
  const factory HouseState.initial() = Initial;
  const factory HouseState.loading() = Loading;
  const factory HouseState.loaded({required House? house}) = Loaded;

  factory HouseState.fromJson(Map<String, dynamic> json) => _$HouseStateFromJson(json);
}
