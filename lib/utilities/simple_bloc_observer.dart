import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);

    // if (bloc.runtimeType.toString() == 'FreelanceDoneCubit') {
    //   Logger().e(
    //       '${bloc.runtimeType}\nCurrentState:${change.currentState}\nNextState:${change.nextState}');
    // }
  }
}
