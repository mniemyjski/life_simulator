import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../freelance/cubit/done/freelance_done_cubit.dart';
import '../../money/cubit/money_cubit.dart';
import '../../stock_market/cubit/stock_market/stock_market_cubit.dart';

part 'loading_cubit.freezed.dart';
part 'loading_cubit.g.dart';
part 'loading_state.dart';

class LoadingCubit extends Cubit<LoadingState> {
  final MoneyCubit _moneyCubit;
  final StockMarketCubit _stockMarketCubit;
  final FreelanceDoneCubit _freelanceDoneCubit;

  LoadingCubit(
    this._moneyCubit,
    this._stockMarketCubit,
    this._freelanceDoneCubit,
  ) : super(const LoadingState.initial());

  loading() {
    emit(const LoadingState.loading());

    emit(const LoadingState.loaded());
  }

  newGame() {
    emit(const LoadingState.loading());

    emit(const LoadingState.loaded());
  }
}
