import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:jiffy/jiffy.dart';
import 'package:life_simulator/app/real_assets/models/build/build_asset_model.dart';
import 'package:life_simulator/utilities/utilities.dart';

import '../../../date/cubit/date_cubit.dart';
import '../../../money/cubit/money_cubit.dart';
import '../../../money/models/transaction/transaction_model.dart';
import '../../../new_game/new_game_cubit.dart';
import '../../models/asset/asset_model.dart';
import '../assets/assets_cubit.dart';

part 'build_asset_cubit.freezed.dart';
part 'build_asset_cubit.g.dart';
part 'build_asset_state.dart';

@lazySingleton
class BuildAssetCubit extends HydratedCubit<BuildAssetState> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  final MoneyCubit _moneyCubit;
  final AssetsCubit _assetsCubit;

  final DateCubit _dateCubit;
  late StreamSubscription _dateSub;

  BuildAssetCubit(
    this._newGameCubit,
    this._moneyCubit,
    this._assetsCubit,
    this._dateCubit,
  ) : super(const BuildAssetState.initial()) {
    _newGame();
    _counting();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    _dateSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(const BuildAssetState.loaded([]));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(const BuildAssetState.loaded([]));
    });
  }

  build(BuildAsset buildAsset, months) {
    if (_moneyCubit.state < buildAsset.cost) return 'not_enought_money';

    state.whenOrNull(loaded: (buildAssets) {
      _dateCubit.state.whenOrNull(loaded: (date) {
        List<BuildAsset> result = List.from(buildAssets)
          ..add(
            buildAsset.copyWith(
              datCre: date,
              datEnd: Jiffy(date).add(months: 12).dateTime.onlyDate(),
            ),
          );
        _moneyCubit.addTransaction(
            value: -buildAsset.cost, eTypeTransactionSource: ETypeTransactionSource.asset);
        emit(BuildAssetState.loaded(result));
      });
    });
  }

  _counting() {
    _dateSub = _dateCubit.stream.listen((dateState) {
      dateState.whenOrNull(loaded: (date) {
        state.whenOrNull(loaded: (buildAssets) {
          List<BuildAsset> result = [];
          for (var element in buildAssets) {
            if (element.datEnd != date) {
              result.add(element);
            } else {
              _assetsCubit.buy(
                Asset(
                  id: element.id,
                  address: element.address,
                  eTypeAsset: element.eTypeAsset,
                  tenantsMax: element.tenantsMax,
                  baseValue: element.value,
                  value: element.value,
                  level: 0,
                  renovation: 100,
                ),
              );
            }
          }
          emit(BuildAssetState.loaded(result));
        });
      });
    });
  }

  @override
  BuildAssetState? fromJson(Map<String, dynamic> json) {
    return BuildAssetState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(BuildAssetState state) {
    return state.toJson();
  }
}
