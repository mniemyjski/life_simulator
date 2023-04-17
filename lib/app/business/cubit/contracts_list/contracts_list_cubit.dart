import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:richeable/app/business/models/contract/contract_model.dart';

part 'contracts_list_cubit.freezed.dart';
part 'contracts_list_cubit.g.dart';
part 'contracts_list_state.dart';

class ContractsListCubit extends Cubit<ContractsListState> {
  ContractsListCubit() : super(const ContractsListState.initial());
}
