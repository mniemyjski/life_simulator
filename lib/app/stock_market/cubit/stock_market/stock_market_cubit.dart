import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../../repositories/stock_market_repository.dart';
import '../../../database/cubit/database_cubit.dart';
import '../../../date/cubit/date_cubit.dart';
import '../../../new_game/new_game_cubit.dart';
import '../../models/candle/candle.dart';
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

  final StockMarketRepository _marketRepository;

  StockMarketCubit(
    this._newGameCubit,
    this._dateCubit,
    this._databaseCubit,
    this._marketRepository,
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

  _newGame() async {
    if (_newGameCubit.state) {
      List<Instrument> result = await _marketRepository.firstOneYearGenerate(
        _databaseCubit.state.instrumentDB,
      );
      final result2 = await _marketRepository.getLastYearCandle(DateTime(18, 1, 1));
      emit(StockMarketState.loaded(result, result2));
    }
    _newGameSub = _newGameCubit.stream.listen((newGame) async {
      if (newGame) {
        List<Instrument> result = await _marketRepository.firstOneYearGenerate(
          _databaseCubit.state.instrumentDB,
        );
        final result2 = await _marketRepository.getLastYearCandle(DateTime(18, 1, 1));

        emit(StockMarketState.loaded(result, result2));
      }
    });
  }

  _counting() {
    _dateSub = _dateCubit.stream.listen((dataState) {
      dataState.whenOrNull(loaded: (date) {
        state.whenOrNull(loaded: (instruments, candles) async {
          if (date == DateTime(18, 1, 1)) return;
          final result =
              await _marketRepository.countingInstruments(instruments: instruments, date: date);
          final result2 = await _marketRepository.getLastYearCandle(date);

          emit(StockMarketState.loaded(result, result2));
        });
      });
    });
  }

  changeTrend(
      {required Instrument instrument,
      required ETypeTrend eTypeTrend,
      required DateTime dateTime}) {
    state.whenOrNull(loaded: (instruments, candles) {
      List<Instrument> result = List.from(instruments)..removeWhere((e) => e.id == instrument.id);
      result.add(instrument.copyWith(eTypeTrend: eTypeTrend));
      emit(StockMarketState.loaded(result, candles));
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
