import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:jiffy/jiffy.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../date/cubit/date_cubit.dart';
import '../../../money/cubit/money/money_cubit.dart';
import '../../../money/models/transaction/transaction_model.dart';
import '../../../new_game/new_game_cubit.dart';
import '../../models/asset/asset_model.dart';
import '../../models/build/build_asset_model.dart';
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
    if (_newGameCubit.state) emit(BuildAssetState.loaded([]));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(BuildAssetState.loaded([]));
    });
  }

  String? build(BuildAsset buildAsset, months) {
    if (_moneyCubit.getBalance() < buildAsset.cost) return 'not_enought_money';

    _dateCubit.state.whenOrNull(loaded: (date) {
      state.whenOrNull(loaded: (buildAssets) {
        BuildAsset newBuildAssets = buildAsset.copyWith(
          datCre: date,
          datEnd: Jiffy(date).add(months: 12).dateTime.onlyDate(),
        );

        _moneyCubit.addTransaction(
            dateTime: date,
            value: -buildAsset.cost,
            eTypeTransactionSource: ETypeTransactionSource.asset);

        emit(BuildAssetState.loaded(List.of(buildAssets)..add(newBuildAssets)));
      });
    });
    return null;
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
              _assetsCubit.add(
                Asset.builder(
                  address: element.address,
                  eTypeAsset: element.eTypeAsset,
                  tenantsMax: element.tenantsMax,
                  baseValue: element.value,
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
