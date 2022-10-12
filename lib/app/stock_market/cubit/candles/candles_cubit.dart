import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../repositories/stock_market_repository.dart';
import '../../../../utilities/utilities.dart';
import '../../../date/cubit/date_cubit.dart';
import '../../models/candle/candle.dart';

part 'candles_cubit.freezed.dart';
part 'candles_cubit.g.dart';
part 'candles_state.dart';

@lazySingleton
class CandlesCubit extends Cubit<CandlesState> {
  final StockMarketRepository _marketRepository;
  final DateCubit _dateCubit;
  late StreamSubscription _dateSub;

  CandlesCubit(this._marketRepository, this._dateCubit) : super(const CandlesState.initial()) {
    state.whenOrNull(initial: () async {
      final result = await _marketRepository.getLastYearCandle(DateTime(18, 1, 1));
      emit(CandlesState.loaded(result));
    });

    _dateSub = _dateCubit.stream.listen((event) {
      event.whenOrNull(loaded: (date) async {
        final result = await _marketRepository.getLastYearCandle(date);
        emit(CandlesState.loaded(result));
      });
    });
  }

  @override
  Future<void> close() {
    _dateSub.cancel();
    return super.close();
  }
}
