import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../config/injectable/app_module.dart';
import '../../config/injectable/injection.dart';
import '../money/repositories/transactions_repository.dart';
import '../skills/repositories/skills_repository.dart';
import '../stock_market/repositories/stock_market_repository.dart';
import '../time_spend/repositories/time_spend_repository.dart';

@lazySingleton
class NewGameCubit extends HydratedCubit<bool> {
  final StockMarketRepository _stockMarketRepository;
  final SkillsRepository _skillsRepository;
  final TimeSpendRepository _timeSpendRepository;
  final TransactionsRepository _transactionsRepository;
  NewGameCubit(
    this._stockMarketRepository,
    this._skillsRepository,
    this._timeSpendRepository,
    this._transactionsRepository,
  ) : super(true);

  Future change() async {
    await getIt<AppModule>().newGame();
    await _timeSpendRepository.init();
    await _stockMarketRepository.init();
    await _skillsRepository.init();
    await _transactionsRepository.init();
    emit(true);
    emit(false);
  }

  @override
  bool? fromJson(Map<String, dynamic> json) => json['value'] as bool;

  @override
  Map<String, dynamic>? toJson(bool state) => {'value': state};
}
