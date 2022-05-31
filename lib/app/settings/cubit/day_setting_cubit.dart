import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DaySettingCubit extends HydratedCubit<int> {
  DaySettingCubit() : super(1);

  change(int day) => emit(day);

  List<String> dayList() => ['1', '5', '10', '30'];

  @override
  int? fromJson(Map<String, dynamic> json) => json['value'] as int;

  @override
  Map<String, dynamic>? toJson(int state) => {'value': state};
}
