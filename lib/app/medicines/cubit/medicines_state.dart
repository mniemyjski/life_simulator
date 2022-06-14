part of 'medicines_cubit.dart';

@freezed
class MedicinesState with _$MedicinesState {
  const factory MedicinesState.initial() = Initial;
  const factory MedicinesState.loading() = Loading;
  const factory MedicinesState.loaded(List<Medicine> medicines) = Loaded;

  factory MedicinesState.fromJson(Map<String, dynamic> json) => _$MedicinesStateFromJson(json);
}
