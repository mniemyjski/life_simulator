import 'dart:async';
import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../money/cubit/income/income_cubit.dart';
import '../../../money/cubit/money/money_cubit.dart';
import '../../../money/models/income/income_model.dart';
import '../../../money/models/transaction/transaction_model.dart';
import '../../../new_game/new_game_cubit.dart';
import '../../models/asset/asset_model.dart';
import '../../models/tenant/tenant_model.dart';
import '../buy/buy_asset_cubit.dart';
import '../tenant/tenants_cubit.dart';

part 'assets_cubit.freezed.dart';
part 'assets_cubit.g.dart';
part 'assets_state.dart';

@lazySingleton
class AssetsCubit extends HydratedCubit<AssetsState> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  final MoneyCubit _moneyCubit;
  final BuyAssetCubit _buyAssetCubit;

  final TenantsCubit _tenantsCubit;

  final IncomeCubit _incomeCubit;

  AssetsCubit(
    this._newGameCubit,
    this._moneyCubit,
    this._buyAssetCubit,
    this._tenantsCubit,
    this._incomeCubit,
  ) : super(const AssetsState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(AssetsState.loaded([], DateTime(18, 1, 1)));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(AssetsState.loaded([], DateTime(18, 1, 1)));
    });
  }

  //function to buy asset
  String? buy(Asset asset) {
    if (_moneyCubit.getBalance() < asset.value) return 'not_enought_money';

    return state.maybeWhen(
        orElse: () => throw 'error',
        loaded: (assets, currentDate) {
          _moneyCubit.addTransaction(
              dateTime: currentDate,
              value: -asset.value,
              eTypeTransactionSource: ETypeTransactionSource.asset);

          _buyAssetCubit.remove(asset);
          _addIncome(asset);

          emit(AssetsState.loaded(List.of(assets)..add(asset), currentDate));
        });
  }

  //function to buy asset
  String add(Asset asset) {
    return state.maybeWhen(
        orElse: () => throw 'error',
        loaded: (assets, currentDate) {
          List<Asset> result = List.from(assets)..add(asset);
          _addIncome(asset);
          emit(AssetsState.loaded(result, currentDate));
          return 'succeed';
        });
  }

  //function to sell asset
  String sell(Asset asset) {
    return state.maybeWhen(
        orElse: () => throw 'error',
        loaded: (assets, currentDate) {
          List<Asset> result = List.of(assets)..removeWhere((element) => element.id == asset.id);

          _moneyCubit.addTransaction(
              dateTime: currentDate,
              value: asset.value,
              eTypeTransactionSource: ETypeTransactionSource.asset);

          _buyAssetCubit.add(asset.copyWith(friendlyAnimal: true, minRent: 800));
          _tenantsCubit.removeTenantInAsset(asset);
          _removeIncome(asset);
          emit(AssetsState.loaded(result, currentDate));
          return 'succeed';
        });
  }

  _addIncome(Asset asset) {
    Income income = Income(
      id: asset.id,
      source: ETypeTransactionSource.asset,
      typeIncome: ETypeIncome.expense,
      eTypeFrequency: ETypeFrequency.monthly,
      value: asset.monthlyCost,
    );

    _incomeCubit.add(income);
  }

  _removeIncome(Asset asset) {
    _incomeCubit.remove(asset.id);
  }

  //function to change renovation for asset
  String changeRenovation({
    required Asset asset,
    required double renovation,
    required double cost,
  }) {
    if (_moneyCubit.getBalance() < -cost) return 'not_enought_money';

    return state.maybeWhen(
        orElse: () => throw 'error',
        loaded: (assets, currentDate) {
          List<Asset> result = List.from(assets)..remove(asset);

          _moneyCubit.addTransaction(
              dateTime: currentDate,
              value: cost,
              eTypeTransactionSource: ETypeTransactionSource.asset);

          Asset newAsset = asset.copyWith(
              renovation: asset.renovation + renovation,
              value: asset.value + (asset.baseValue * (renovation / 100)));
          result.add(newAsset);
          emit(AssetsState.loaded(result, currentDate));
          return 'succeed';
        });
  }

  //function to change level for asset
  String? changeLevel({
    required Asset asset,
    required int level,
    required double cost,
  }) {
    if (_moneyCubit.getBalance() < -cost) return 'not_enought_money';

    return state.maybeWhen(
        orElse: () => throw 'error',
        loaded: (assets, currentDate) {
          List<Asset> result = List.from(assets)..remove(asset);

          _moneyCubit.addTransaction(
              dateTime: currentDate,
              value: cost,
              eTypeTransactionSource: ETypeTransactionSource.asset);

          Asset newAsset =
              asset.copyWith(level: asset.level + level, value: asset.value + (-cost * 1.5));
          result.add(newAsset);
          emit(AssetsState.loaded(result, currentDate));
        });
  }

  //function to change animal friendly for asset
  changeFriendlyAnimal({
    required Asset asset,
    required bool friendlyAnimal,
  }) {
    state.maybeWhen(
        orElse: () => throw 'error',
        loaded: (assets, currentDate) {
          List<Asset> result = List.from(assets)..remove(asset);
          Asset newAsset = asset.copyWith(friendlyAnimal: friendlyAnimal);
          result.add(newAsset);
          emit(AssetsState.loaded(result, currentDate));
        });
  }

  //function to change minimum rating tenant for asset
  changeMinRating({
    required Asset asset,
    required int minRating,
  }) {
    state.maybeWhen(
        orElse: () => throw 'error',
        loaded: (assets, currentDate) {
          List<Asset> result = List.from(assets)..remove(asset);
          Asset newAsset = asset.copyWith(minRating: minRating);
          result.add(newAsset);
          emit(AssetsState.loaded(result, currentDate));
        });
  }

  //function to change minimum rent for asset
  changeRent({
    required Asset asset,
    required double rent,
  }) {
    state.maybeWhen(
        orElse: () => throw 'error',
        loaded: (assets, currentDate) {
          List<Asset> result = List.from(assets)..remove(asset);
          Asset newAsset = asset.copyWith(minRent: rent);
          result.add(newAsset);
          emit(AssetsState.loaded(result, currentDate));
        });
  }

  counting(DateTime dateTime) {
    state.maybeWhen(
        orElse: () => throw 'error',
        loaded: (assets, currentDate) {
          final List<Asset> result = [];
          for (var element in assets) {
            Asset newAsset = _decreaseRenovation(element);
            _tenantsCubit.changeSatisfaction(newAsset);
            _tenantsCubit.removeTenantBelowSatisfaction(newAsset);
            _tenantsCubit.addTenant(newAsset);
            result.add(newAsset);
            emit(AssetsState.loaded(result, dateTime));
          }
        });
  }

  //function to decrease renovation
  //ToDo when renovation is below 50 add chance to decrease level asset
  Asset _decreaseRenovation(Asset asset) {
    Asset result = asset;
    var rng = Random();

    if (rng.nextInt(100) > 95) {
      List<Tenant> tenants = _tenantsCubit.getTenantInAsset(asset);

      for (var t in tenants) {
        int hasAnimal = t.hasAnimal ? 1 : 0;

        double increaseR = 1 - hasAnimal / result.tenantsMax;
        double decreaseR = -1 - hasAnimal / result.tenantsMax;

        double increaseV = result.baseValue * (increaseR / 100);
        double decreaseV = result.baseValue * (decreaseR / 100);

        if (t.rating == 1) {
          int r = rng.nextInt(100);

          if (r < 90 && result.renovation > 0) {
            result = result.copyWith(
                renovation: result.renovation + decreaseR, value: result.value + decreaseV);
          }
        }

        if (t.rating == 2) {
          int r = rng.nextInt(100);
          if (r < 80 && result.renovation > 0) {
            result = result.copyWith(
                renovation: result.renovation + decreaseR, value: result.value + decreaseV);
          }
        }
        if (t.rating == 3) {
          int r = rng.nextInt(100);
          if (r >= 70 && result.renovation < 100) {
            result = result.copyWith(
                renovation: result.renovation + increaseR, value: result.value + increaseV);
          }
          if (r < 70 && result.renovation > 0) {
            result = result.copyWith(
                renovation: result.renovation + decreaseR, value: result.value + decreaseV);
          }
        }
        if (t.rating == 4) {
          int r = rng.nextInt(100);
          if (r >= 20 && result.renovation < 100) {
            result = result.copyWith(
                renovation: result.renovation + increaseR, value: result.value + increaseV);
          }
          if (r < 20 && result.renovation > 0) {
            result = result.copyWith(
                renovation: result.renovation + decreaseR, value: result.value + decreaseV);
          }
        }
        if (t.rating == 5) {
          int r = rng.nextInt(100);
          if (r >= 5 && result.renovation < 100) {
            result = result.copyWith(
                renovation: result.renovation + increaseR, value: result.value + increaseV);
          }
          if (r < 5 && result.renovation > 0) {
            result = result.copyWith(
                renovation: result.renovation + decreaseR, value: result.value + decreaseV);
          }
        }
      }
    }
    return result;
  }

  @override
  AssetsState? fromJson(Map<String, dynamic> json) {
    return AssetsState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(AssetsState state) {
    return state.toJson();
  }
}
