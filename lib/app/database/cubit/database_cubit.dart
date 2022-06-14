import 'dart:async';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:life_simulator/app/database/models/database.dart';

import '../../new_game/new_game_cubit.dart';
import '../data/data.dart';

@lazySingleton
class DatabaseCubit extends HydratedCubit<Database> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  DatabaseCubit(NewGameCubit newGameCubit)
      : _newGameCubit = newGameCubit,
        super(
          Database(
            jobsDB: Data.jobs(),
            learningsDB: Data.learnings(),
            mealsDB: Data.meals(),
            housesDB: Data.houses(),
            transportsDB: Data.transports(),
            eventsDB: Data.events(),
            medicinesDB: Data.medicines(),
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
    if (_newGameCubit.state)
      emit(Database(
        jobsDB: Data.jobs(),
        learningsDB: Data.learnings(),
        mealsDB: Data.meals(),
        housesDB: Data.houses(),
        transportsDB: Data.transports(),
        eventsDB: Data.events(),
        medicinesDB: Data.medicines(),
      ));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame)
        emit(Database(
          jobsDB: Data.jobs(),
          learningsDB: Data.learnings(),
          mealsDB: Data.meals(),
          housesDB: Data.houses(),
          transportsDB: Data.transports(),
          eventsDB: Data.events(),
          medicinesDB: Data.medicines(),
        ));
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
