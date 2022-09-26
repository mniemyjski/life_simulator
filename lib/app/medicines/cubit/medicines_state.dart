part of 'medicines_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class MedicinesState with _$MedicinesState {
  const factory MedicinesState.initial() = Initial;
  const factory MedicinesState.loading() = Loading;
  factory MedicinesState.loaded(List<Medicine> medicines) = Loaded;

  factory MedicinesState.fromJson(Map<String, dynamic> json) => _$MedicinesStateFromJson(json);
}
