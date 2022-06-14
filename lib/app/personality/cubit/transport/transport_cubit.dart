import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../database/cubit/database_cubit.dart';
import '../../../income/cubit/income_cubit.dart';
import '../../../income/models/income_model.dart';
import '../../../money/cubit/money_cubit.dart';
import '../../../new_game/new_game_cubit.dart';
import '../../../time_spend/cubit/time_spend_cubit.dart';
import '../../../time_spend/models/bonus/bonus_model.dart';
import '../../models/transport/transport_model.dart';

part 'transport_cubit.freezed.dart';
part 'transport_cubit.g.dart';
part 'transport_state.dart';

@lazySingleton
class TransportCubit extends HydratedCubit<TransportState> {
  final MoneyCubit _moneyCubit;
  final DatabaseCubit _databaseCubit;
  final IncomeCubit _incomeCubit;
  final TimeSpendCubit _timeSpendCubit;

  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  TransportCubit(
    MoneyCubit moneyCubit,
    IncomeCubit incomeCubit,
    NewGameCubit newGameCubit,
    TimeSpendCubit timeSpendCubit,
    DatabaseCubit databaseCubit,
  )   : _moneyCubit = moneyCubit,
        _incomeCubit = incomeCubit,
        _newGameCubit = newGameCubit,
        _timeSpendCubit = timeSpendCubit,
        _databaseCubit = databaseCubit,
        super(TransportState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state)
      emit(TransportState.loaded(transport: null, transports: _databaseCubit.state.transportsDB));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame)
        emit(TransportState.loaded(transport: null, transports: _databaseCubit.state.transportsDB));
    });
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
        eTypeFrequency: ETypeFrequency.monthly,
      );

      _timeSpendCubit.addBonuses(
        Bonus(
            eTypeBonus: ETypeBonus.commuting,
            eTypeBonusSource: ETypeBonusSource.transport,
            value: transport.commuting),
      );

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
        _moneyCubit.change(_transport.cost * 0.8);

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
