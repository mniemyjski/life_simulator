import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../utilities/utilities.dart';
import '../../../date/cubit/date_cubit.dart';
import '../../models/fame/fame_model.dart';
import '../../repositories/freelance_repository.dart';

part 'fame_cubit.freezed.dart';
part 'fame_cubit.g.dart';
part 'fame_state.dart';

@injectable
class FameCubit extends HydratedCubit<FameState> {
  late StreamSubscription _fameSub;
  final FreelanceRepository _freelanceRepository;
  final DateCubit _dateCubit;

  FameCubit(this._freelanceRepository, this._dateCubit) : super(const FameState.initial()) {
    state.maybeWhen(orElse: () async {
      Fame fame = await _freelanceRepository.getFame();
      emit(FameState.loaded(fame.fame));
    });

    _fameSub = _freelanceRepository.watchFame().listen((_) async {
      Fame fame = await _freelanceRepository.getFame();
      emit(FameState.loaded(fame.fame));
    });
  }

  @override
  Future<void> close() async {
    _fameSub.cancel();
    super.close();
  }

  Future buyAdv({required double money, required int value}) async {
    await _dateCubit.state.whenOrNull(loaded: (date) async {
      await _freelanceRepository.buyAdv(money: money, value: value, dateTime: date);
    });
  }

  @override
  FameState? fromJson(Map<String, dynamic> json) {
    return FameState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(FameState state) {
    return state.toJson();
  }
}
