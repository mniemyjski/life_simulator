import 'package:freezed_annotation/freezed_annotation.dart';

import '../freelance_base/freelance_base.dart';

part 'freelance_done_model.freezed.dart';
part 'freelance_done_model.g.dart';

@freezed
class FreelanceDone with _$FreelanceDone {
  const FreelanceDone._();

  @Implements<FreelanceBase>()
  @Assert('rating > 0', 'rating < 6')
  const factory FreelanceDone({
    //Base
    required String id,
    required String name,
    required ETypeFreelance eTypeFreelance,
    required double fame,
    required double price,
    required int level,
    //EndBase
    required DateTime dateCre,
    required int rating,
  }) = _FreelanceDone;

  factory FreelanceDone.fromJson(Map<String, dynamic> json) => _$FreelanceDoneFromJson(json);
}
