import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../database/cubit/database_cubit.dart';
import '../../date/cubit/date_cubit.dart';
import '../../money/cubit/money_cubit.dart';
import '../../money/models/transaction/transaction_model.dart';
import '../../new_game/new_game_cubit.dart';
import '../models/medicine_model.dart';

part 'medicines_cubit.freezed.dart';
part 'medicines_cubit.g.dart';
part 'medicines_state.dart';

@lazySingleton
class MedicinesCubit extends HydratedCubit<MedicinesState> {
  final MoneyCubit _moneyCubit;

  final NewGameCubit _newGameCubit;
  final DatabaseCubit _databaseCubit;
  late StreamSubscription _newGameSub;

  final DateCubit _dateCubit;
  late StreamSubscription _dateSub;

  MedicinesCubit(
    this._moneyCubit,
    this._newGameCubit,
    this._databaseCubit,
    this._dateCubit,
  ) : super(const MedicinesState.initial()) {
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

        for (var element in medicines) {
          if (element.active) {
            Medicine medicine = element.copyWith(leftDuration: element.leftDuration - 1);
            if (medicine.leftDuration == 0) {
              medicine = element.copyWith(leftDuration: element.duration, active: false);
            }
            result.add(medicine);
          } else {
            result.add(element);
          }
        }

        emit(MedicinesState.loaded(result));
      });
    });
  }

  String? buy(Medicine medicine) {
    state.whenOrNull(loaded: (medicines) {
      if (_moneyCubit.state < medicine.cost) return "youDontHaveEnoughMoney";

      List<Medicine> result = List.from(medicines)
        ..removeWhere((element) => element.id == medicine.id);
      for (var element in medicines) {
        if (element.id == medicine.id) {
          result.add(element.copyWith(active: true));
          _moneyCubit.addTransaction(
              value: element.cost, eTypeTransactionSource: ETypeTransactionSource.medicine);
        }
      }

      result = result..sort(((a, b) => a.id.compareTo(b.id)));
      emit(MedicinesState.loaded(result));
    });
    return null;
  }

  @override
  MedicinesState? fromJson(Map<String, dynamic> json) {
    return MedicinesState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(MedicinesState state) {
    return state.toJson();
  }
}
