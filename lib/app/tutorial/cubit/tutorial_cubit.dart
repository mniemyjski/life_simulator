import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:richeable/app/tutorial/models/tutorial_model.dart';

@lazySingleton
class TutorialCubit extends HydratedCubit<Tutorial> {
  TutorialCubit() : super(const Tutorial());

  reset() {
    emit(const Tutorial());
  }

  main() {
    emit(state.copyWith(main: true));
  }

  @override
  Tutorial? fromJson(Map<String, dynamic> json) {
    return Tutorial.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(Tutorial state) {
    return state.toJson();
  }
}
