import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:life_simulator/app/freelance/models/freelance_base/freelance_base.dart';

part 'freelance_done_model.freezed.dart';
part 'freelance_done_model.g.dart';

@freezed
class FreelanceDone with _$FreelanceDone implements FreelanceBase {
  const FreelanceDone._();
  @Assert('rating > 0', 'rating < 6')
  const factory FreelanceDone({
    //Base
    required String id,
    required String name,
    required ETypeFreelance eTypeFreelance,
    required double fame,
    required double price,
    //EndBase
    required DateTime dateDone,
    required int rating,
  }) = _FreelanceDone;

  factory FreelanceDone.fromJson(Map<String, dynamic> json) => _$FreelanceDoneFromJson(json);

  int generateFame() {
    return 0;
  }

  double generateEarn() {
    return 0;
  }
}
