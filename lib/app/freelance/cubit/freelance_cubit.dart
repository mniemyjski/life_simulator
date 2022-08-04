import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'freelance_state.dart';

class FreelanceCubit extends Cubit<FreelanceState> {
  FreelanceCubit() : super(FreelanceInitial());
}
