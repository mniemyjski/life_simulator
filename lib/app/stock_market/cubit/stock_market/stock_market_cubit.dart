import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:richeable/app/stock_market/services/stock_market_services.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../database/cubit/database_cubit.dart';
import '../../../date/cubit/date_cubit.dart';
import '../../../loading/cubit/loading_cubit.dart';
import '../../../new_game/new_game_cubit.dart';
import '../../models/instrument/instrument.dart';

part 'stock_market_cubit.freezed.dart';
part 'stock_market_cubit.g.dart';
part 'stock_market_state.dart';

@lazySingleton
class StockMarketCubit extends HydratedCubit<StockMarketState> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  final DateCubit _dateCubit;
  late StreamSubscription _dateSub;

  final DatabaseCubit _databaseCubit;

  final LoadingCubit _loadingCubit;

  StockMarketCubit(
    this._newGameCubit,
    this._dateCubit,
    this._databaseCubit,
    this._loadingCubit,
  ) : super(const StockMarketState.initial()) {
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
    if (_newGameCubit.state) {
      List<Instrument> result = StockMarketServices.firstOneYearGenerate(
        _databaseCubit.state.instrumentDB,
      );

      emit(StockMarketState.loaded(result));
    }
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) {
        List<Instrument> result = StockMarketServices.firstOneYearGenerate(
          _databaseCubit.state.instrumentDB,
        );
        emit(StockMarketState.loaded(result));
      }
    });
  }

  _counting() {
    _dateSub = _dateCubit.stream.listen((dataState) {
      dataState.whenOrNull(loaded: (date) {
        state.whenOrNull(loaded: (instruments) {
          if (date == DateTime(18, 1, 1)) return;
          // final result = await compute(StockMarketServices.countingInstrument, [instruments, date]);
          final result =
              StockMarketServices.countingInstrument(instruments: instruments, date: date);
          emit(StockMarketState.loaded(result));
        });
      });
    });
  }

  changeTrend(
      {required Instrument instrument,
      required ETypeTrend eTypeTrend,
      required DateTime dateTime}) {
    state.whenOrNull(loaded: (instruments) {
      List<Instrument> result = List.from(instruments)..removeWhere((e) => e.id == instrument.id);
      result.add(instrument.copyWith(eTypeTrend: eTypeTrend));
      emit(StockMarketState.loaded(result));
    });
  }

  @override
  StockMarketState? fromJson(Map<String, dynamic> json) {
    return StockMarketState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(StockMarketState state) {
    return state.toJson();
  }
}
