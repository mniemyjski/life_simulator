import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:life_simulator/app/save/save_cubit.dart';
import 'package:life_simulator/app/time_spend/cubit/time_spend_cubit.dart';
import 'package:life_simulator/app/time_spend/models/bonus/bonus_model.dart';

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
  final TimeSpendCubit _timeSpendCubit;

  final SaveCubit _saveCubit;
  late StreamSubscription _saveSub;

  TransportCubit({
    required MoneyCubit moneyCubit,
    required IncomeCubit incomeCubit,
    required SaveCubit saveCubit,
    required TimeSpendCubit timeSpendCubit,
  })  : _moneyCubit = moneyCubit,
        _incomeCubit = incomeCubit,
        _saveCubit = saveCubit,
        _timeSpendCubit = timeSpendCubit,
        super(TransportState.initial()) {
    _saveCubit.state.whenOrNull(loaded: (save) => init(save));
    _saveSub = _saveCubit.stream.listen((s) => s.whenOrNull(loaded: (save) => init(save)));
  }

  @override
  Future<void> close() async {
    _saveSub.cancel();
    super.close();
  }

  init(bool newGame) {
    state.whenOrNull(
      initial: () => emit(TransportState.loaded(transport: null, transports: Data.transports())),
      loaded: (transport, transports) {
        if (!newGame) emit(TransportState.loaded(transport: null, transports: Data.transports()));
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
          _timeSpendCubit.removeBonuses(ETypeBonusSource.transport);
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

      if (transport.commuting != 0)
        _timeSpendCubit.addBonuses(
          Bonus(
              eTypeBonus: ETypeBonus.commuting,
              eTypeBonusSource: ETypeBonusSource.transport,
              value: transport.commuting),
        );

      if (transport.bonusToRelax != 0)
        _timeSpendCubit.addBonuses(
          Bonus(
              eTypeBonus: ETypeBonus.relax,
              eTypeBonusSource: ETypeBonusSource.transport,
              value: transport.bonusToRelax),
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
        _timeSpendCubit.removeBonuses(ETypeBonusSource.transport);
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
