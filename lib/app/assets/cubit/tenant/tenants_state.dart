part of 'tenants_cubit.dart';

@freezed
class TenantsState with _$TenantsState {
  const factory TenantsState.initial() = Initial;
  const factory TenantsState.loading() = Loading;
  const factory TenantsState.loaded(List<Tenant> tenants) = Loaded;

  factory TenantsState.fromJson(Map<String, dynamic> json) => _$TenantsStateFromJson(json);
}
