import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:richeable/utilities/utilities.dart';

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

  BuildAssetCubit(
    this._newGameCubit,
    this._moneyCubit,
    this._assetsCubit,
  ) : super(const BuildAssetState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(BuildAssetState.loaded([], DateTime(18, 1, 1)));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(BuildAssetState.loaded([], DateTime(18, 1, 1)));
    });
  }

  String? build(BuildAsset buildAsset, months) {
    if (_moneyCubit.getBalance() < buildAsset.cost) return 'not_enought_money';

    state.whenOrNull(loaded: (buildAssets, currentDate) {
      BuildAsset newBuildAssets = buildAsset.copyWith(
        datCre: currentDate,
        datEnd: currentDate.addDate(months: months),
      );

      _moneyCubit.addTransaction(
          dateTime: currentDate,
          value: -buildAsset.cost,
          eTypeTransactionSource: ETypeTransactionSource.asset);

      emit(BuildAssetState.loaded(List.of(buildAssets)..add(newBuildAssets), currentDate));
    });

    return null;
  }

  counting(DateTime dateTime) {
    state.whenOrNull(loaded: (buildAssets, currentDate) {
      List<BuildAsset> result = [];
      for (var element in buildAssets) {
        if (element.datEnd != dateTime) {
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
      emit(BuildAssetState.loaded(result, dateTime));
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
