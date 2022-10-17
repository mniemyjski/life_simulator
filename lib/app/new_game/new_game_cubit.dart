import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../config/injectable/app_module.dart';
import '../../config/injectable/injection.dart';
import '../stock_market/repositories/stock_market_repository.dart';

@lazySingleton
class NewGameCubit extends HydratedCubit<bool> {
  final StockMarketRepository _stockMarketRepository;
  NewGameCubit(this._stockMarketRepository) : super(true);

  change() async {
    emit(true);
    await getIt<AppModule>().newGame();
    await _stockMarketRepository.init();
    emit(false);
  }

  @override
  bool? fromJson(Map<String, dynamic> json) => json['value'] as bool;

  @override
  Map<String, dynamic>? toJson(bool state) => {'value': state};
}
