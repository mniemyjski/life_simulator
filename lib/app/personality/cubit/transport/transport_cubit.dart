import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../date/cubit/date_cubit.dart';
import '../../../money/cubit/income/income_cubit.dart';
import '../../../money/cubit/money/money_cubit.dart';
import '../../../money/models/income/income_model.dart';
import '../../../money/models/transaction/transaction_model.dart';
import '../../../new_game/new_game_cubit.dart';
import '../../../time_spend/models/time_bonus/time_bonus_model.dart';
import '../../../time_spend/repositories/time_spend_repository.dart';
import '../../models/transport/transport_model.dart';

part 'transport_cubit.freezed.dart';
part 'transport_cubit.g.dart';
part 'transport_state.dart';

@lazySingleton
class TransportCubit extends HydratedCubit<TransportState> {
  final MoneyCubit _moneyCubit;
  final IncomeCubit _incomeCubit;
  final TimeSpendRepository _timeSpendRepository;

  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  final DateCubit _dateCubit;

  TransportCubit(
    this._moneyCubit,
    this._incomeCubit,
    this._newGameCubit,
    this._dateCubit,
    this._timeSpendRepository,
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
    if (_moneyCubit.getBalance() < transport.cost) return "You don't have enough money";

    return state.whenOrNull(loaded: (oldTransport) {
      if (oldTransport != null) {
        if (oldTransport.name != 'Ticket') {
          return "Before you can buy new car you must to sell your car";
        } else {
          _incomeCubit.remove(oldTransport.uid);
        }
      }

      Income income = Income(
        uid: transport.uid,
        source: ETypeTransactionSource.transport,
        typeIncome: ETypeIncome.expense,
        value: transport.monthlyCost,
        eTypeFrequency: ETypeFrequency.monthly,
      );

      _timeSpendRepository.addBonuses(
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

      _dateCubit.state.whenOrNull(loaded: (date) {
        _moneyCubit.addTransaction(
            dateTime: date,
            value: transport.cost,
            eTypeTransactionSource: ETypeTransactionSource.transport);
      });

      _incomeCubit.add(income);

      emit(TransportState.loaded(transport: transport));

      return 'succeed';
    });
  }

  sell() {
    return state.whenOrNull(loaded: (transport) {
      if (transport != null) {
        _timeSpendRepository.removeBonus(ETypeBonusSource.transport);
        _incomeCubit.remove(transport.uid);

        _dateCubit.state.whenOrNull(loaded: (date) {
          _moneyCubit.addTransaction(
              dateTime: date,
              value: transport.cost * 0.8,
              eTypeTransactionSource: ETypeTransactionSource.transport);
        });

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
