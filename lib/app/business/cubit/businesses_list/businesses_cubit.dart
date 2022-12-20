import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../new_game/new_game_cubit.dart';
import '../../models/business/business_model.dart';
import '../../repositories/businesses_repository.dart';

part 'businesses_cubit.freezed.dart';
part 'businesses_cubit.g.dart';
part 'businesses_state.dart';

@lazySingleton
class BusinessesCubit extends HydratedCubit<BusinessesState> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  final BusinessesRepository _businessesRepository;
  late StreamSubscription _businessesSub;

  BusinessesCubit(
    this._newGameCubit,
    this._businessesRepository,
  ) : super(const BusinessesState.initial()) {
    _newGame();

    _businessesSub = _businessesRepository.watchBusiness().listen((businesses) {
      emit(BusinessesState.loaded(businesses));
    });
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    _businessesSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(BusinessesState.loaded([]));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(BusinessesState.loaded([]));
    });
  }

  create(Business business) {
    _businessesRepository.addBusiness(business);
  }

  remove(Business business) {
    _businessesRepository.removeBusiness(business);
  }

  increaseMaxWorkers(Business business) {
    _businessesRepository.updateBusiness(business.copyWith(maxWorkers: business.maxWorkers + 10));
  }

  increaseMaxScientist(Business business) {
    _businessesRepository
        .updateBusiness(business.copyWith(maxScientist: business.maxScientist + 2));
  }

  increaseMaxAccountant(Business business) {
    _businessesRepository
        .updateBusiness(business.copyWith(maxAccountant: business.maxAccountant + 1));
  }

  increaseMaxAnalyst(Business business) {
    _businessesRepository.updateBusiness(business.copyWith(maxAnalyst: business.maxAnalyst + 1));
  }

  increaseMaxManager(Business business) {
    _businessesRepository.updateBusiness(business.copyWith(maxManager: business.maxManager + 1));
  }

  increaseMaxMarketer(Business business) {
    _businessesRepository.updateBusiness(business.copyWith(maxMarketer: business.maxMarketer + 1));
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
