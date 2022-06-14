import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:life_simulator/app/learning/models/learning_model.dart';

import '../../event/models/game_event/game_event_model.dart';
import '../../job/models/job/job_model.dart';
import '../../medicines/models/medicine_model.dart';
import '../../personality/models/house/house_model.dart';
import '../../personality/models/meal/meal_model.dart';
import '../../personality/models/transport/transport_model.dart';

part 'database.freezed.dart';
part 'database.g.dart';

@freezed
class Database with _$Database {
  const factory Database({
    required List<Job> jobsDB,
    required List<Learning> learningsDB,
    required List<Meal> mealsDB,
    required List<House> housesDB,
    required List<Transport> transportsDB,
    required List<GameEvent> eventsDB,
    required List<Medicine> medicinesDB,
  }) = _Database;

  factory Database.fromJson(Map<String, dynamic> json) => _$DatabaseFromJson(json);
}
