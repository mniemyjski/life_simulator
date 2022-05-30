import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

part 'save_cubit.freezed.dart';
part 'save_cubit.g.dart';
part 'save_state.dart';

@lazySingleton
class SaveCubit extends HydratedCubit<SaveState> {
  SaveCubit() : super(SaveState.initial(null)) {
    state.when(
      initial: (save) {
        save != null ? emit(SaveState.loaded(save)) : emit(SaveState.loaded(false));
      },
      loaded: (save) {
        emit(SaveState.loaded(save));
      },
    );
  }

  change(bool save) {
    if (state != save) emit(SaveState.loaded(save));
  }

  @override
  SaveState? fromJson(Map<String, dynamic> json) {
    return SaveState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(SaveState state) {
    return state.toJson();
  }
}
