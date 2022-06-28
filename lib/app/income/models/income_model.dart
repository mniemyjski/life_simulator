import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utilities/utilities.dart';

part 'income_model.freezed.dart';
part 'income_model.g.dart';

enum ETypeSource {
  job,
  meal,
  house,
  car,
  asset,
}

enum ETypeIncome {
  revenue,
  expense,
}

enum ETypeFrequency {
  annually,
  monthly,
  weekly,
  daily,
}

@freezed
class Income with _$Income {
  const Income._();

  const factory Income({
    required String id,
    required ETypeSource source,
    required ETypeIncome typeIncome,
    required ETypeFrequency eTypeFrequency,
    required double value,
    DateTime? next,
  }) = _Income;

  factory Income.fromJson(Map<String, dynamic> json) => _$IncomeFromJson(json);

  double monthlyIncome() {
    switch (eTypeFrequency) {
      case ETypeFrequency.annually:
        return value / 12;

      case ETypeFrequency.monthly:
        return value;

      case ETypeFrequency.weekly:
        return value * 4;

      case ETypeFrequency.daily:
        return value * 30;
    }
  }

  String frequencyToString() {
    return Enums.toText(this.eTypeFrequency).tr();
  }

  // String nextToString() {
  //   if (this.next == null) throw 'Next date is null';
  //   if (this.next!.year < 99) return DateFormat('yy-MM-dd').format(this.next!);
  //   if (this.next!.year < 999) return DateFormat('yyy-MM-dd').format(this.next!);
  //   return DateFormat('yyyy-MM-dd').format(this.next!);
  // }
}
