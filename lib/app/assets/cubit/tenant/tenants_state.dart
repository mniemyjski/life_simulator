part of 'tenants_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class TenantsState with _$TenantsState {
  const factory TenantsState.initial() = Initial;
  const factory TenantsState.loading() = Loading;
  factory TenantsState.loaded(List<Tenant> tenants) = Loaded;

  factory TenantsState.fromJson(Map<String, dynamic> json) => _$TenantsStateFromJson(json);
}
