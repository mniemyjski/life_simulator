import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'loan_state.dart';

@lazySingleton
class LoanCubit extends Cubit<LoanState> {
  LoanCubit() : super(LoanInitial());
}
