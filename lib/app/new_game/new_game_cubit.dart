import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../config/injectable/injection.dart';
import '../../repositories/isar_repository.dart';

@lazySingleton
class NewGameCubit extends HydratedCubit<bool> {
  NewGameCubit() : super(true);

  change() async {
    emit(true);
    getIt<IsarRepository>().newGame();
    emit(false);
  }

  @override
  bool? fromJson(Map<String, dynamic> json) => json['value'] as bool;

  @override
  Map<String, dynamic>? toJson(bool state) => {'value': state};
}
