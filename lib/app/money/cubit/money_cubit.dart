import 'dart:async';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../save/save_cubit.dart';

@lazySingleton
class MoneyCubit extends HydratedCubit<double> {
  final SaveCubit _saveCubit;
  late StreamSubscription _save;

  MoneyCubit({
    required SaveCubit saveCubit,
  })  : _saveCubit = saveCubit,
        super(500000) {
    _saveCubit.state.whenOrNull(loaded: (save) => init(save));
    _save = _saveCubit.stream.listen((s) => s.whenOrNull(loaded: (save) => init(save)));
  }

  @override
  Future<void> close() async {
    _save.cancel();
    super.close();
  }

  init(bool newGame) {
    !newGame ? emit(5000) : emit(state);
  }

  change(double money) {
    double refresh = state + money;
    emit(refresh);
  }

  @override
  double? fromJson(Map<String, dynamic> json) => json['value'] as double;

  @override
  Map<String, dynamic>? toJson(double state) => {'value': state};
}
