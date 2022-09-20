import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/utilities/utilities.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);

    if (bloc.runtimeType.toString() == 'IncomeCubit') {
      Logger().i(
          '${bloc.runtimeType}\nCurrentState:${change.currentState}\nNextState:${change.nextState}');
    }
    if (bloc.runtimeType.toString() == 'DateCubit') {
      Logger().e(
          '${bloc.runtimeType}\nCurrentState:${change.currentState}\nNextState:${change.nextState}');
    }
  }
}
