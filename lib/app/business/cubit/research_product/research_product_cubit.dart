import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:richeable/app/business/models/product/product_model.dart';
import 'package:richeable/app/business/models/research/research_model.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../date/cubit/date_cubit.dart';
import '../../repositories/research_repository.dart';

part 'research_product_cubit.freezed.dart';
part 'research_product_cubit.g.dart';
part 'research_product_state.dart';

@injectable
class ResearchProductCubit extends HydratedCubit<ResearchProductState> {
  late StreamSubscription _researchSub;
  final ResearchRepository _researchRepository;
  final int businessId;
  final DateCubit _dateCubit;

  ResearchProductCubit(
    this._researchRepository,
    this._dateCubit,
    @factoryParam this.businessId,
  ) : super(const ResearchProductState.initial()) {
    state.maybeWhen(orElse: () async {
      Research? research = await _researchRepository.get(businessId);
      if (research != null) {
        emit(ResearchProductState.loaded(research));
      } else {
        emit(ResearchProductState.none());
      }
    });

    _researchSub = _researchRepository.watch(businessId).listen((research) async {
      if (research != null) {
        emit(ResearchProductState.loaded(research));
      } else {
        emit(ResearchProductState.none());
      }
    });
  }

  @override
  Future<void> close() async {
    _researchSub.cancel();
    super.close();
  }

  Future<String?> add({
    required String name,
    required double cost,
    required ETypeProduct eTypeProduct,
    required ETypeQuality eTypeQuality,
    required int months,
  }) async {
    return await _dateCubit.state.maybeWhen(
      loaded: (date) async {
        final research = Research(
          businessId: businessId,
          name: name,
          cost: cost,
          eTypeProduct: eTypeProduct,
          eTypeQuality: eTypeQuality,
          dateEnd: date.addDate(months: months),
        );

        return await _researchRepository.add(research);
      },
      orElse: () => 'error',
    );
  }

  remove(Research research) async {
    return await _researchRepository.remove(research);
  }

  @override
  fromJson(Map<String, dynamic> json) {
    return ResearchProductState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(state) {
    return state.toJson();
  }
}
