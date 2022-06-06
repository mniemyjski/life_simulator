import 'dart:async';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../date/cubit/date_cubit.dart';
import '../../../save/save_cubit.dart';

@lazySingleton
class DepositCubit extends HydratedCubit<double> {
  final DateCubit _dateCubit;
  late StreamSubscription _dateSub;

  final SaveCubit _saveCubit;
  late StreamSubscription _saveSub;

  DepositCubit({
    required DateCubit dateCubit,
    required SaveCubit saveCubit,
  })  : _dateCubit = dateCubit,
        _saveCubit = saveCubit,
        super(0) {
    _saveCubit.state.whenOrNull(loaded: (save) => _init(save));
    _saveSub = _saveCubit.stream.listen((s) => s.whenOrNull(loaded: (save) => _init(save)));
    _counting();
  }

  @override
  Future<void> close() async {
    _saveSub.cancel();
    _dateSub.cancel();
    super.close();
  }

  _init(bool newGame) {
    if (!newGame) emit(0);
  }

  change(double value) {
    emit(state + value);
  }

  _counting() {
    _saveSub = _dateCubit.stream.listen((event) {
      event.whenOrNull(loaded: (date) {
        double result = state + (state * (0.12 / 360));
        emit(result);
      });
    });
  }

  @override
  double? fromJson(Map<String, dynamic> json) => json['value'] as double;

  @override
  Map<String, dynamic>? toJson(double state) => {'value': state};
}
