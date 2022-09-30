import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import '../upgrades/upgrade_model.dart';

part 'business_model.freezed.dart';
part 'business_model.g.dart';

@freezed
class Business with _$Business {
  const Business._();

  const factory Business({
    required String id,
    required String name,
    required Upgrade upgrade,
  }) = _Business;

  static Business builder(String name) {
    String id = const Uuid().v1();
    return Business(id: id, name: name, upgrade: Upgrade(id: id));
  }

  factory Business.fromJson(Map<String, dynamic> json) => _$BusinessFromJson(json);
}
