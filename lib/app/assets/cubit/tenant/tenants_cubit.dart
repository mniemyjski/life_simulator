import 'dart:async';
import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../../../utilities/utilities.dart';
import '../../../database/cubit/database_cubit.dart';
import '../../../money/cubit/income/income_cubit.dart';
import '../../../money/models/income/income_model.dart';
import '../../../new_game/new_game_cubit.dart';
import '../../models/asset/asset_model.dart';
import '../../models/tenant/tenant_model.dart';

part 'tenants_cubit.freezed.dart';
part 'tenants_cubit.g.dart';
part 'tenants_state.dart';

@lazySingleton
class TenantsCubit extends HydratedCubit<TenantsState> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  final DatabaseCubit _databaseCubit;
  final IncomeCubit _incomeCubit;

  TenantsCubit(
    this._newGameCubit,
    this._databaseCubit,
    this._incomeCubit,
  ) : super(const TenantsState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(TenantsState.loaded([]));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(TenantsState.loaded([]));
    });
  }

  List<Tenant> getTenantInAsset(Asset asset) {
    return state.maybeWhen(
        orElse: () => [],
        loaded: (tenants) {
          return List.from(tenants.where((e) => e.idAsset == asset.id).toList());
        });
  }

  double getTotalRentInAsset(Asset asset) {
    return state.maybeWhen(
        orElse: () => 0,
        loaded: (tenants) {
          double rent = 0;
          for (var element in tenants.where((element) => element.idAsset == asset.id)) {
            rent += element.rent;
          }
          return rent;
        });
  }

  removeTenantInAsset(Asset asset) {
    state.whenOrNull(loaded: (tenants) {
      List<Tenant> result = List.from(tenants)
        ..removeWhere((e) {
          if (e.idAsset == asset.id) _incomeCubit.remove(e.id!);
          return e.idAsset == asset.id;
        });
      emit(TenantsState.loaded(result));
    });
  }

  addTenant(Asset asset) {
    if (Random().nextInt(100) < 50) return;

    state.whenOrNull(loaded: (tenants) {
      var uuid = const Uuid();
      List<Tenant> tenantsDB = _getTenantsDB(asset);
      List<Tenant> tenantsInAsset =
          List.of(tenants.where((element) => element.idAsset == asset.id));
      List<Tenant> tenantsAllInAssets =
          List.of(tenants.where((element) => element.idAsset != asset.id));

      if (tenantsInAsset.length < asset.tenantsMax &&
          asset.renovation > 70 &&
          tenantsDB.isNotEmpty) {
        final int random = Random().nextInt(tenantsDB.length);
        Tenant newTenant = tenantsDB[random].copyWith(id: uuid.v1(), idAsset: asset.id);

        _addIncome(newTenant);
        tenantsInAsset.add(newTenant);

        emit(TenantsState.loaded(tenantsInAsset..addAll(tenantsAllInAssets)));
      }
    });
  }

  _addIncome(Tenant tenant) {
    Income income = Income(
      id: tenant.id!,
      source: ETypeSource.asset,
      typeIncome: ETypeIncome.revenue,
      eTypeFrequency: ETypeFrequency.monthly,
      value: tenant.rent,
    );

    _incomeCubit.add(income);
  }

  List<Tenant> _getTenantsDB(Asset asset) {
    List<Tenant> tenants = List.from(_databaseCubit.state.tenantsDB
        .where(
          (e) =>
              asset.level >= e.minLevel &&
              asset.minRating <= e.rating &&
              e.rent >= asset.minRent &&
              (asset.friendlyAnimal == e.hasAnimal || e.hasAnimal == false),
        )
        .toList());

    List<Tenant> result = [];

    for (var element in tenants) {
      int random = Random().nextInt(element.chance + 1);

      if (random == element.chance) result.add(element);
    }

    return result;
  }

  removeTenant({required Asset asset, required Tenant tenant}) {
    return state.whenOrNull(loaded: (tenants) {
      List<Tenant> result = List.from(tenants)..removeWhere((e) => e.id == tenant.id);
      _incomeCubit.remove(tenant.id!);
      emit(TenantsState.loaded(result));
    });
  }

  changeSatisfaction(Asset asset) {
    List<Tenant> result = [];

    state.whenOrNull(loaded: (tenants) {
      for (var e in tenants) {
        if (asset.renovation < 80) {
          int random = Random().nextInt(100);
          if (random > 90 && e.satisfaction > 0) {
            result.add(e.copyWith(satisfaction: e.satisfaction - 1));
          } else {
            result.add(e);
          }
        } else if (asset.renovation >= 80 && asset.renovation <= 100) {
          int random = Random().nextInt(100);
          if (random > 95 && e.satisfaction < 100) {
            result.add(e.copyWith(satisfaction: e.satisfaction + 1));
          } else {
            result.add(e);
          }
        }
      }
    });

    emit(TenantsState.loaded(result));
  }

  removeTenantBelowSatisfaction(Asset asset) {
    List<Tenant> result = [];

    state.whenOrNull(loaded: (tenants) {
      for (var e in tenants) {
        if (e.satisfaction < 50) {
          int random = Random().nextInt(100);
          random > 50 ? result.add(e) : _incomeCubit.remove(e.id!);
        } else {
          result.add(e);
        }
      }
      emit(TenantsState.loaded(result));
    });
  }

  @override
  TenantsState? fromJson(Map<String, dynamic> json) {
    return TenantsState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(TenantsState state) {
    return state.toJson();
  }
}
