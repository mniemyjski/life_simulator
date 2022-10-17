import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../models/instrument/instrument.dart';
import '../../repositories/stock_market_repository.dart';

part 'instruments_cubit.freezed.dart';
part 'instruments_cubit.g.dart';
part 'instruments_state.dart';

@injectable
class InstrumentsCubit extends Cubit<InstrumentsState> {
  final StockMarketRepository _marketRepository;
  late StreamSubscription _instrumentsSub;

  InstrumentsCubit(
    this._marketRepository,
  ) : super(const InstrumentsState.initial()) {
    state.whenOrNull(initial: () async {
      List<Instrument> result = await _marketRepository.getAllInstrument();
      emit(InstrumentsState.loaded(result));
    });

    _instrumentsSub = _marketRepository.instrumentWatcher().listen((event) async {
      List<Instrument> result = await _marketRepository.getAllInstrument();
      emit(InstrumentsState.loaded(result));
    });
  }

  @override
  Future<void> close() async {
    _instrumentsSub.cancel();
    super.close();
  }
}
