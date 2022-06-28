import 'dart:async';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:life_simulator/app/database/data/data_assets.dart';
import 'package:life_simulator/app/database/data/data_events.dart';
import 'package:life_simulator/app/database/data/data_houses.dart';
import 'package:life_simulator/app/database/data/data_jobs.dart';
import 'package:life_simulator/app/database/data/data_learnings.dart';
import 'package:life_simulator/app/database/data/data_meals.dart';
import 'package:life_simulator/app/database/data/data_medicines.dart';
import 'package:life_simulator/app/database/data/data_tenants.dart';
import 'package:life_simulator/app/database/data/data_transports.dart';
import 'package:life_simulator/app/database/models/database.dart';

import '../../new_game/new_game_cubit.dart';

@lazySingleton
class DatabaseCubit extends HydratedCubit<Database> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  DatabaseCubit(NewGameCubit newGameCubit)
      : _newGameCubit = newGameCubit,
        super(
          Database(
            jobsDB: DataJobs.db(),
            learningsDB: DataLearnings.db(),
            mealsDB: DataMeals.db(),
            housesDB: DataHouses.db(),
            transportsDB: DataTransports.db(),
            eventsDB: DataEvents.db(),
            medicinesDB: DataMedicines.db(),
            assetsDB: DataAssets.db(),
            tenantsDB: DataTenants.db(),
          ),
        ) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) {
      emit(Database(
        jobsDB: DataJobs.db(),
        learningsDB: DataLearnings.db(),
        mealsDB: DataMeals.db(),
        housesDB: DataHouses.db(),
        transportsDB: DataTransports.db(),
        eventsDB: DataEvents.db(),
        medicinesDB: DataMedicines.db(),
        assetsDB: DataAssets.db(),
        tenantsDB: DataTenants.db(),
      ));
    }
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) {
        emit(Database(
          jobsDB: DataJobs.db(),
          learningsDB: DataLearnings.db(),
          mealsDB: DataMeals.db(),
          housesDB: DataHouses.db(),
          transportsDB: DataTransports.db(),
          eventsDB: DataEvents.db(),
          medicinesDB: DataMedicines.db(),
          assetsDB: DataAssets.db(),
          tenantsDB: DataTenants.db(),
        ));
      }
    });
  }

  @override
  Database? fromJson(Map<String, dynamic> json) {
    return Database.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(Database state) {
    return state.toJson();
  }
}
