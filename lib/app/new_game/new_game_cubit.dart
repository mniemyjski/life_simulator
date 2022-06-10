import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class NewGameCubit extends HydratedCubit<bool> {
  NewGameCubit() : super(true);

  change(bool newGame) => emit(newGame);

  @override
  bool? fromJson(Map<String, dynamic> json) => json['value'] as bool;

  @override
  Map<String, dynamic>? toJson(bool state) => {'value': state};
}
