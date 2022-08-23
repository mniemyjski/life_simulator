import 'package:freezed_annotation/freezed_annotation.dart';

part 'tenant_model.freezed.dart';
part 'tenant_model.g.dart';

@freezed
class Tenant with _$Tenant {
  @Assert('satisfaction > 0', 'satisfaction <= 100')
  const factory Tenant({
    String? id,
    String? idAsset,
    required double minLevel,
    required double rent,
    required int rating,
    required bool hasAnimal,
    required int chance,
    @Default(100) int satisfaction,
  }) = _Tenants;

  factory Tenant.fromJson(Map<String, dynamic> json) => _$TenantFromJson(json);
}
