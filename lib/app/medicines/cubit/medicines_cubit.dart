import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:life_simulator/app/date/cubit/date_cubit.dart';
import 'package:life_simulator/app/money/cubit/money_cubit.dart';

import '../../database/cubit/database_cubit.dart';
import '../../new_game/new_game_cubit.dart';
import '../models/medicine_model.dart';

part 'medicines_cubit.freezed.dart';
part 'medicines_cubit.g.dart';
part 'medicines_state.dart';

@lazySingleton
class MedicinesCubit extends Cubit<MedicinesState> {
  final MoneyCubit _moneyCubit;

  final NewGameCubit _newGameCubit;
  final DatabaseCubit _databaseCubit;
  late StreamSubscription _newGameSub;

  final DateCubit _dateCubit;
  late StreamSubscription _dateSub;

  MedicinesCubit(
    MoneyCubit moneyCubit,
    NewGameCubit newGameCubit,
    DateCubit dateCubit,
    DatabaseCubit databaseCubit,
  )   : _moneyCubit = moneyCubit,
        _newGameCubit = newGameCubit,
        _dateCubit = dateCubit,
        _databaseCubit = databaseCubit,
        super(MedicinesState.initial()) {
    _newGame();
    _counting();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    _dateSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(MedicinesState.loaded(_databaseCubit.state.medicinesDB));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(MedicinesState.loaded(_databaseCubit.state.medicinesDB));
    });
  }

  _counting() {
    _dateSub = _dateCubit.stream.listen((event) {
      state.whenOrNull(loaded: (medicines) {
        List<Medicine> result = [];

        medicines.forEach((element) {
          if (element.active) {
            Medicine _medicine = element.copyWith(leftDuration: element.leftDuration - 1);
            if (_medicine.leftDuration == 0)
              _medicine = element.copyWith(leftDuration: element.duration, active: false);
            result.add(_medicine);
          } else {
            result.add(element);
          }
        });

        emit(MedicinesState.loaded(result));
      });
    });
  }

  buy(String id) {
    state.whenOrNull(loaded: (medicines) {
      List<Medicine> result = List.from(medicines)..removeWhere((element) => element.id == id);
      medicines.forEach((element) {
        if (element.id == id) result.add(element.copyWith(active: true));
      });
      result = result..sort(((a, b) => a.id.compareTo(b.id)));
      emit(MedicinesState.loaded(result));
    });
  }
}
