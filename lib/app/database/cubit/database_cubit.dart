import 'dart:async';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../constants/data/instruments_data.dart';
import '../../new_game/new_game_cubit.dart';
import '../data/data_assets.dart';
import '../data/data_events.dart';
import '../data/data_foods.dart';
import '../data/data_houses.dart';
import '../data/data_jobs.dart';
import '../data/data_learnings.dart';
import '../data/data_medicines.dart';
import '../data/data_tenants.dart';
import '../data/data_transports.dart';
import '../models/database.dart';

@lazySingleton
class DatabaseCubit extends HydratedCubit<Database> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  DatabaseCubit(this._newGameCubit)
      : super(
          Database(
            jobsDB: DataJobs.db(),
            learningsDB: DataLearnings.db(),
            foodsDB: DataFoods.db(),
            housesDB: DataHouses.db(),
            transportsDB: DataTransports.db(),
            eventsDB: DataEvents.db(),
            medicinesDB: DataMedicines.db(),
            assetsDB: DataAssets.db(),
            tenantsDB: DataTenants.db(),
            instrumentDB: InstrumentsData.init(),
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
        foodsDB: DataFoods.db(),
        housesDB: DataHouses.db(),
        transportsDB: DataTransports.db(),
        eventsDB: DataEvents.db(),
        medicinesDB: DataMedicines.db(),
        assetsDB: DataAssets.db(),
        tenantsDB: DataTenants.db(),
        instrumentDB: InstrumentsData.init(),
      ));
    }
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) {
        emit(Database(
          jobsDB: DataJobs.db(),
          learningsDB: DataLearnings.db(),
          foodsDB: DataFoods.db(),
          housesDB: DataHouses.db(),
          transportsDB: DataTransports.db(),
          eventsDB: DataEvents.db(),
          medicinesDB: DataMedicines.db(),
          assetsDB: DataAssets.db(),
          tenantsDB: DataTenants.db(),
          instrumentDB: InstrumentsData.init(),
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
