import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:life_simulator/app/save/save_cubit.dart';

import '../../../../data/data.dart';
import '../../../income/cubit/income_cubit.dart';
import '../../../income/models/income_model.dart';
import '../../../money/cubit/money_cubit.dart';
import '../../models/transport/transport_model.dart';

part 'transport_cubit.freezed.dart';
part 'transport_cubit.g.dart';
part 'transport_state.dart';

@lazySingleton
class TransportCubit extends HydratedCubit<TransportState> {
  final MoneyCubit _moneyCubit;
  final IncomeCubit _incomeCubit;
  final SaveCubit _saveCubit;
  late StreamSubscription _save;

  TransportCubit({
    required MoneyCubit moneyCubit,
    required IncomeCubit incomeCubit,
    required SaveCubit saveCubit,
  })  : _moneyCubit = moneyCubit,
        _incomeCubit = incomeCubit,
        _saveCubit = saveCubit,
        super(TransportState.initial(transport: null, transports: null)) {
    _saveCubit.state.whenOrNull(loaded: (save) => init(save));
    _save = _saveCubit.stream.listen((s) => s.whenOrNull(loaded: (save) => init(save)));
  }

  @override
  Future<void> close() async {
    _save.cancel();
    super.close();
  }

  init(bool newGame) {
    state.whenOrNull(
      initial: (transport, transports) {
        !newGame || transports == null
            ? emit(TransportState.loaded(transport: null, transports: Data.transports()))
            : emit(TransportState.loaded(transport: transport, transports: transports));
      },
      loaded: (transport, transports) {
        !newGame
            ? emit(TransportState.loaded(transport: null, transports: Data.transports()))
            : emit(TransportState.loaded(transport: transport, transports: transports));
      },
    );
  }

  buy(Transport transport) {
    if (_moneyCubit.state < transport.cost) return "You don't have enough money";

    return state.whenOrNull(loaded: (_transport, _transports) {
      if (_transport != null) {
        if (_transport.name != 'Ticket') {
          return "Before you can buy new car you must to sell your car";
        } else {
          _incomeCubit.remove(_transport.id);
        }
      }

      Income income = Income(
        id: transport.id,
        source: ETypeSource.car,
        typeIncome: ETypeIncome.expense,
        value: -transport.monthlyCost,
        interval: 30,
        timeLeft: 30,
      );

      _moneyCubit.change(-transport.cost);
      _incomeCubit.add(income);

      emit(TransportState.loaded(transport: transport, transports: _transports));

      return 'succeed';
    });
  }

  sell() {
    return state.whenOrNull(loaded: (_transport, _transports) {
      if (_transport != null) {
        _incomeCubit.remove(_transport.id);
        _moneyCubit.change((_transport.cost * 0.8).toInt());

        emit(TransportState.loaded(transport: null, transports: _transports));
      }
    });
  }

  @override
  TransportState? fromJson(Map<String, dynamic> json) {
    return TransportState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(TransportState state) {
    return state.toJson();
  }
}
