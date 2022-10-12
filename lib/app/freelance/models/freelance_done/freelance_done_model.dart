import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:richeable/utilities/utilities.dart';

import '../freelance_job/freelance_job_model.dart';

part 'freelance_done_model.g.dart';

@Collection(ignore: {'props', 'stringify'})
@Name('Freelances')
class FreelanceDone extends Equatable {
  final Id id;
  final String name;

  @enumerated
  final ETypeFreelance eTypeFreelance;
  final double fame;
  final double price;
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

  FreelanceDone copyWith({
    int? id,
    double? fame,
    double? price,
    DateTime? dateCre,
    int? rating,
    String? name,
    ETypeFreelance? eTypeFreelance,
    String? uid,
  }) {
    return FreelanceDone(
      id: id ?? this.id,
      fame: fame ?? this.fame,
      price: price ?? this.price,
      dateCre: dateCre ?? this.dateCre,
      rating: rating ?? this.rating,
      name: name ?? this.name,
      eTypeFreelance: eTypeFreelance ?? this.eTypeFreelance,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'fame': fame,
      'price': price,
      'dateCre': dateCre.millisecondsSinceEpoch,
      'rating': rating,
      'name': name,
      'eTypeFreelance': Enums.toText(eTypeFreelance),
    };
  }

  factory FreelanceDone.fromJson(Map<String, dynamic> map) {
    return FreelanceDone(
      id: map['id'] as int,
      fame: map['fame'] as double,
      price: map['price'] as double,
      dateCre: DateTime.fromMillisecondsSinceEpoch(map['dateCre']),
      rating: map['rating'] as int,
      name: map['name'] as String,
      eTypeFreelance: Enums.toEnum(map['eTypeFreelance'], ETypeFreelance.values) as ETypeFreelance,
    );
  }
}
