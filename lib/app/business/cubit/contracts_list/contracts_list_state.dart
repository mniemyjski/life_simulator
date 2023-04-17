part of 'contracts_list_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ContractsListState with _$ContractsListState {
  const factory ContractsListState.initial() = Initial;
  const factory ContractsListState.loading() = Loading;
  factory ContractsListState.loaded(List<Contract> contracts) = Loaded;

  factory ContractsListState.fromJson(Map<String, dynamic> json) =>
      _$ContractsListStateFromJson(json);
}
