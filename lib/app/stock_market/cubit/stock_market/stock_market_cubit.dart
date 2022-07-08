import 'dart:async';
import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:life_simulator/utilities/utilities.dart';

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

  StockMarketCubit(
    this._newGameCubit,
    this._dateCubit,
    this._databaseCubit,
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
    if (_newGameCubit.state) _firstOneYearGenerate();
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) _firstOneYearGenerate();
    });
  }

  _firstOneYearGenerate() {
    List<Instrument> newInstruments = [];

    for (var i in _databaseCubit.state.instrumentDB) {
      List<Candle> newCandles = List.from(i.candles);
      Instrument newInstrument = i;

      do {
        Candle newCandle;

        newInstrument = _valorization(newInstrument.copyWith(candles: newCandles));

        if (newCandles.last.dateTime.millisecondsSinceEpoch >
            newInstrument.datTrendEnd.millisecondsSinceEpoch) {
          newInstrument = _randomChangeTrend(newInstrument, newCandles.last.dateTime);
        }

        switch (newInstrument.eTypeTrend) {
          case ETypeTrend.stable:
            newCandle = _stable(
              candles: newCandles,
              dateTime: newCandles.last.dateTime.add(const Duration(days: 1)),
            );
            break;
          case ETypeTrend.decrease:
            newCandle = _decrease(
              candles: newCandles,
              dateTime: newCandles.last.dateTime.add(const Duration(days: 1)),
            );
            break;
          case ETypeTrend.increase:
            newCandle = _increase(
              candles: newCandles,
              dateTime: newCandles.last.dateTime.add(const Duration(days: 1)),
            );
            break;
        }

        newCandles.add(newCandle);
      } while (newCandles.last.dateTime.millisecondsSinceEpoch <
          DateTime(18, 01, 01).millisecondsSinceEpoch);

      newInstruments.add(newInstrument.copyWith(candles: newCandles));
    }
    emit(StockMarketState.loaded(newInstruments));
  }

  _counting() {
    _dateSub = _dateCubit.stream.listen((dataState) {
      dataState.whenOrNull(loaded: (date) {
        state.whenOrNull(loaded: (instruments) {
          List<Instrument> newInstruments = [];

          for (var i in instruments) {
            Instrument newInstrument = i;
            Candle newCandle;

            newInstrument = _valorization(newInstrument);

            if (newInstrument.candles.last.dateTime.millisecondsSinceEpoch >
                newInstrument.datTrendEnd.millisecondsSinceEpoch) {
              newInstrument =
                  _randomChangeTrend(newInstrument, newInstrument.candles.last.dateTime);
            }

            switch (newInstrument.eTypeTrend) {
              case ETypeTrend.stable:
                newCandle = _stable(
                  candles: newInstrument.candles,
                  dateTime: date,
                );
                break;
              case ETypeTrend.decrease:
                newCandle = _decrease(
                  candles: newInstrument.candles,
                  dateTime: date,
                );
                break;
              case ETypeTrend.increase:
                newCandle = _increase(
                  candles: newInstrument.candles,
                  dateTime: date,
                );
                break;
            }

            List<Candle> newCandles = List.of(newInstrument.candles)
              ..removeAt(0)
              ..add(newCandle);
            newInstruments.add(newInstrument.copyWith(candles: newCandles));
          }

          emit(StockMarketState.loaded(newInstruments));
        });
      });
    });
  }

  Candle _increase({required List<Candle> candles, required DateTime dateTime}) {
    var rng = Random();

    double change = rng.nextInt(5) > 2
        ? (rng.nextDoubleInRange(0, 5) / 100)
        : (-rng.nextDoubleInRange(0, 2) / 100);
    double newClose = candles.last.close + (candles.last.close * change);

    return Candle(
      dateTime: dateTime,
      open: candles.last.close,
      high: newClose + (newClose * (rng.nextDoubleInRange(0, 1) / 100)),
      low: newClose + (newClose * (-rng.nextDoubleInRange(0, 1) / 100)),
      close: newClose,
    );
  }

  Candle _decrease({required List<Candle> candles, required DateTime dateTime}) {
    var rng = Random();

    double change = rng.nextInt(5) > 2
        ? (-rng.nextDoubleInRange(0, 5) / 100)
        : (rng.nextDoubleInRange(0, 2) / 100);
    double newClose = candles.last.close + (candles.last.close * change);

    return Candle(
      dateTime: dateTime,
      open: candles.last.close,
      high: newClose + (newClose * (rng.nextDoubleInRange(0, 1) / 100)),
      low: newClose + (newClose * (-rng.nextDoubleInRange(0, 1) / 100)),
      close: newClose,
    );
  }

  Candle _stable({required List<Candle> candles, required DateTime dateTime}) {
    var rng = Random();

    double change = rng.nextBool()
        ? ((-rng.nextDoubleInRange(1, 2)) / 100)
        : ((rng.nextDoubleInRange(1, 2)) / 100);
    double newClose = candles.last.close + (candles.last.close * change);

    return Candle(
      dateTime: dateTime,
      open: candles.last.close,
      high: newClose + (newClose * (rng.nextDoubleInRange(0, 1) / 100)),
      low: newClose + (newClose * (-rng.nextDoubleInRange(0, 1) / 100)),
      close: newClose,
    );
  }

  Instrument _valorization(Instrument instrument) {
    DateTime dateTime = instrument.candles.last.dateTime.onlyDate();
    if (dateTime == DateTime(dateTime.year, 1, 1)) {
      return instrument.copyWith(
          min: instrument.min * instrument.valorization,
          max: instrument.max * instrument.valorization);
    } else {
      return instrument;
    }
  }

  Instrument _randomChangeTrend(Instrument instrument, DateTime dateTime) {
    var rng = Random();
    int r = rng.nextInt(
        instrument.potentialIncrease + instrument.potentialDecrease + instrument.potentialStable);
    int d = instrument.potentialDecrease;
    int i = instrument.potentialIncrease + instrument.potentialDecrease;

    if (instrument.candles.last.close < instrument.min) {
      return instrument.copyWith(
          eTypeTrend: ETypeTrend.increase,
          datTrendEnd: dateTime.add(Duration(days: rng.nextInt(10))));
    } else if (instrument.candles.last.close > instrument.max) {
      return instrument.copyWith(
          eTypeTrend: ETypeTrend.decrease,
          datTrendEnd: dateTime.add(Duration(days: rng.nextInt(10))));
    } else if (r < d) {
      return instrument.copyWith(
          eTypeTrend: ETypeTrend.decrease,
          datTrendEnd: dateTime.add(Duration(days: rng.nextInt(30))));
    } else if (r >= d && r < i) {
      return instrument.copyWith(
          eTypeTrend: ETypeTrend.increase,
          datTrendEnd: dateTime.add(Duration(days: rng.nextInt(10))));
    } else {
      return instrument.copyWith(
          eTypeTrend: ETypeTrend.stable,
          datTrendEnd: dateTime.add(Duration(days: rng.nextInt(40))));
    }
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
