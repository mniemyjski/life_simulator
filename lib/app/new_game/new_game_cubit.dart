import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../config/injectable/app_module.dart';
import '../../config/injectable/injection.dart';
import '../skills/repositories/skills_repository.dart';
import '../stock_market/repositories/stock_market_repository.dart';

@lazySingleton
class NewGameCubit extends HydratedCubit<bool> {
  final StockMarketRepository _stockMarketRepository;
  final SkillsRepository _skillsRepository;
  NewGameCubit(this._stockMarketRepository, this._skillsRepository) : super(true);

  change() async {
    await getIt<AppModule>().newGame();
    await _stockMarketRepository.init();
    await _skillsRepository.init();
    emit(true);
    emit(false);
  }

  @override
  bool? fromJson(Map<String, dynamic> json) => json['value'] as bool;

  @override
  Map<String, dynamic>? toJson(bool state) => {'value': state};
}
