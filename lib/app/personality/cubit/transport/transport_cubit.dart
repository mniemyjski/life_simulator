import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:life_simulator/app/money/models/transaction/transaction_model.dart';

import '../../../income/cubit/income_cubit.dart';
import '../../../income/models/income_model.dart';
import '../../../money/cubit/money_cubit.dart';
import '../../../new_game/new_game_cubit.dart';
import '../../../time_spend/cubit/time_spend_cubit.dart';
import '../../../time_spend/models/time_bonus/time_bonus_model.dart';
import '../../models/transport/transport_model.dart';

part 'transport_cubit.freezed.dart';
part 'transport_cubit.g.dart';
part 'transport_state.dart';

@lazySingleton
class TransportCubit extends HydratedCubit<TransportState> {
  final MoneyCubit _moneyCubit;
  final IncomeCubit _incomeCubit;
  final TimeSpendCubit _timeSpendCubit;

  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  TransportCubit(
    this._moneyCubit,
    this._incomeCubit,
    this._timeSpendCubit,
    this._newGameCubit,
  ) : super(const TransportState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(const TransportState.loaded(transport: null));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(const TransportState.loaded(transport: null));
    });
  }

  buy(Transport transport) {
    if (_moneyCubit.state < transport.cost) return "You don't have enough money";

    return state.whenOrNull(loaded: (_transport) {
      if (_transport != null) {
        if (_transport.name != 'Ticket') {
          return "Before you can buy new car you must to sell your car";
        } else {
          _incomeCubit.remove(_transport.id);
        }
      }

      Income income = Income(
        id: transport.id,
        source: ETypeSource.transport,
        typeIncome: ETypeIncome.expense,
        value: -transport.monthlyCost,
        eTypeFrequency: ETypeFrequency.monthly,
      );

      _timeSpendCubit.addBonus(
        [
          TimeBonus(
              eTypeBonus: ETypeBonus.commuting,
              eTypeBonusSource: ETypeBonusSource.transport,
              value: transport.commuting),
          TimeBonus(
              eTypeBonus: ETypeBonus.relax,
              eTypeBonusSource: ETypeBonusSource.transport,
              value: transport.bonusToRelax),
          TimeBonus(
              eTypeBonus: ETypeBonus.sleep,
              eTypeBonusSource: ETypeBonusSource.transport,
              value: transport.bonusToSleep),
          TimeBonus(
              eTypeBonus: ETypeBonus.learn,
              eTypeBonusSource: ETypeBonusSource.transport,
              value: transport.bonusToLearn),
        ],
      );

      _moneyCubit.addTransaction(
          value: -transport.cost, eTypeTransactionSource: ETypeTransactionSource.transport);

      _incomeCubit.add(income);

      emit(TransportState.loaded(transport: transport));

      return 'succeed';
    });
  }

  sell() {
    return state.whenOrNull(loaded: (_transport) {
      if (_transport != null) {
        _timeSpendCubit.removeBonus(ETypeBonusSource.transport);
        _incomeCubit.remove(_transport.id);
        _moneyCubit.addTransaction(
            value: _transport.cost * 0.8, eTypeTransactionSource: ETypeTransactionSource.transport);

        emit(const TransportState.loaded(transport: null));
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
