import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../../utilities/utilities.dart';

part 'loading_cubit.freezed.dart';
part 'loading_cubit.g.dart';
part 'loading_state.dart';

@lazySingleton
class LoadingCubit extends Cubit<LoadingState> {
  LoadingCubit() : super(const LoadingState.loaded());

  String add() {
    String uid = const Uuid().v1();
    return state.when(loading: (names) {
      List<String> result = List.of(names)..add(uid);
      emit(LoadingState.loading(result));
      return uid;
    }, loaded: () {
      emit(LoadingState.loading([uid]));

      return uid;
    });
  }

  Future delayed() async {
    return Future.delayed(const Duration(milliseconds: 100));
  }

  remove(String uid) {
    state.whenOrNull(loading: (names) {
      if (!names.contains(uid)) return;
      List<String> result = List.of(names)..removeWhere((element) => element == uid);
      if (result.isEmpty) {
        emit(const LoadingState.loaded());
      } else {
        emit(LoadingState.loading(result));
      }
    });
  }

  //
  // loading() {
  //   emit(const LoadingState.loading());
  // }

  // loaded() {
  //   emit(const LoadingState.loaded());
  // }

  // _loading() {
  //   _stockMarketCubit.stream.listen((event) {
  //     event.maybeWhen(
  //       orElse: () {
  //         if (state is! Loading) emit(const LoadingState.loading());
  //       },
  //       loaded: (v) => emit(const LoadingState.loaded()),
  //     );
  //   });
  //   _freelanceDoneCubit.stream.listen((event) {
  //     event.maybeWhen(
  //       orElse: () {
  //         if (state is! Loading) emit(const LoadingState.loading());
  //         emit(const LoadingState.loading());
  //       },
  //       loaded: (v) => emit(const LoadingState.loaded()),
  //     );
  //   });
  // }
}
