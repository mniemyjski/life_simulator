import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:richeable/utilities/utilities.dart';

import '../freelance_job/freelance_job_model.dart';

part 'freelance_done_model.g.dart';

@CopyWith()
@JsonSerializable()
@Collection(ignore: {'props', 'stringify'})
@Name('Freelances')
class FreelanceDone extends Equatable {
  final Id id;
  final String name;

  @enumerated
  final ETypeFreelance eTypeFreelance;
  final double fame;
  final double price;
  @Index()
  final DateTime dateCre;
  final int rating;
  @Index()
  final DateTime next1;
  @Index()
  final DateTime next2;
  @Index()
  final DateTime next3;

  FreelanceDone({
    this.id = Isar.autoIncrement,
    required this.name,
    required this.eTypeFreelance,
    required this.fame,
    required this.price,
    required this.dateCre,
    required this.rating,
  })  : next1 = dateCre.addDate(months: 3 * rating),
        next2 = dateCre.addDate(years: 1 * rating),
        next3 = dateCre.addDate(years: 2 * rating);

  @override
  List<Object> get props => [
        name,
        eTypeFreelance,
        fame,
        price,
        dateCre,
        rating,
        next1,
        next2,
        next3,
      ];

  factory FreelanceDone.fromJson(Map<String, dynamic> json) => _$FreelanceDoneFromJson(json);
  Map<String, dynamic> toJson() => _$FreelanceDoneToJson(this);
}
