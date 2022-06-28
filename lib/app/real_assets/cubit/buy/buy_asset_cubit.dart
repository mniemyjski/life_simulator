import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../database/cubit/database_cubit.dart';
import '../../../new_game/new_game_cubit.dart';
import '../../models/asset/asset_model.dart';

part 'buy_asset_cubit.freezed.dart';
part 'buy_asset_cubit.g.dart';
part 'buy_asset_state.dart';

@lazySingleton
class BuyAssetCubit extends Cubit<BuyAssetState> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;
  final DatabaseCubit _databaseCubit;

  BuyAssetCubit(
    this._newGameCubit,
    this._databaseCubit,
  ) : super(const BuyAssetState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(BuyAssetState.loaded(_databaseCubit.state.assetsDB));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(BuyAssetState.loaded(_databaseCubit.state.assetsDB));
    });
  }

  add(Asset asset) {
    state.whenOrNull(loaded: (assets) {
      List<Asset> result = List.from(assets)..add(asset);
      emit(BuyAssetState.loaded(result));
    });
  }

  remove(Asset asset) {
    state.whenOrNull(loaded: (assets) {
      List<Asset> result = List.from(assets)..removeWhere((e) => e.id == asset.id);
      emit(BuyAssetState.loaded(result));
    });
  }
}
