import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../money/cubit/money/money_cubit.dart';
import '../../../new_game/new_game_cubit.dart';
import '../../models/business/business_model.dart';

part 'businesses_cubit.freezed.dart';
part 'businesses_cubit.g.dart';
part 'businesses_state.dart';

@lazySingleton
class BusinessesCubit extends HydratedCubit<BusinessesState> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  final MoneyCubit _moneyCubit;

  BusinessesCubit(this._newGameCubit, this._moneyCubit) : super(const BusinessesState.initial()) {
    _newGame();
    _counting();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(BusinessesState.loaded([]));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(BusinessesState.loaded([]));
    });
  }

  _counting() {}

  String? create(Business business) {
    // if (_moneyCubit.state < 5000) {
    //   return "You don't have enough money.";
    // }

    state.maybeWhen(
        orElse: () => 'Error',
        loaded: (businesses) {
          List<Business> result = List.of(businesses);
          result.add(business);
          emit(BusinessesState.loaded(result));
        });
    return null;
  }

  remove(Business business) {
    state.maybeWhen(
        orElse: () => 'error',
        loaded: (businesses) {
          List<Business> result = List.of(businesses);
          result.removeWhere((element) => element.id == business.id);
          emit(BusinessesState.loaded(result));
        });
  }

  increaseMaxEmployees(Business business) {
    state.maybeWhen(
        orElse: () => 'error',
        loaded: (businesses) {
          List<Business> result = List.of(businesses);
          int index = result.indexOf(business);
          result.removeAt(index);
          result.insert(
            index,
            business.copyWith.upgrade(maxEmployees: business.upgrade.maxEmployees + 1),
          );
          emit(BusinessesState.loaded(result));
        });
  }

  increaseMaxScientist(Business business) {
    state.maybeWhen(
        orElse: () => 'error',
        loaded: (businesses) {
          List<Business> result = List.of(businesses);
          int index = result.indexOf(business);
          result.removeAt(index);
          result.insert(
            index,
            business.copyWith.upgrade(maxEmployees: business.upgrade.maxScientist + 1),
          );
          emit(BusinessesState.loaded(result));
        });
  }

  @override
  BusinessesState? fromJson(Map<String, dynamic> json) {
    return BusinessesState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(BusinessesState state) {
    return state.toJson();
  }
}
