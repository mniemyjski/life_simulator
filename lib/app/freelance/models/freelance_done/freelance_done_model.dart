import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:richeable/utilities/utilities.dart';

import '../freelance_base/freelance_base.dart';

// part 'freelance_done_model.freezed.dart';
part 'freelance_done_model.g.dart';

// @freezed
// class FreelanceDone with _$FreelanceDone {
//   const FreelanceDone._();
//
//   @Implements<FreelanceBase>()
//   @Assert('rating > 0', 'rating < 6')
//   const factory FreelanceDone({
//     //Base
//     required String id,
//     required String name,
//     required ETypeFreelance eTypeFreelance,
//     //EndBase
//     required double fame,
//     required double price,
//     required DateTime dateCre,
//     required int rating,
//   }) = _FreelanceDone;
//
//   factory FreelanceDone.fromJson(Map<String, dynamic> json) => _$FreelanceDoneFromJson(json);
// }

@Collection(ignore: {'props', 'stringify'})
@Name('Freelances')
class FreelanceDone extends FreelanceBase with EquatableMixin {
  final double fame;
  final double price;
  final DateTime dateCre;
  final int rating;
  final DateTime next1;
  final DateTime next2;
  final DateTime next3;

  FreelanceDone({
    Id? id,
    required String uid,
    required String name,
    required ETypeFreelance eTypeFreelance,
    required this.fame,
    required this.price,
    required this.dateCre,
    required this.rating,
  })  : next1 = dateCre.addDate(months: 3 * rating),
        next2 = dateCre.addDate(years: 1 * rating),
        next3 = dateCre.addDate(years: 2 * rating),
        super(id: id, name: name, eTypeFreelance: eTypeFreelance, uid: uid);

  @override
  List<Object> get props => [
        uid,
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
    double? fame,
    double? price,
    DateTime? dateCre,
    int? rating,
    String? name,
    ETypeFreelance? eTypeFreelance,
    String? uid,
  }) {
    return FreelanceDone(
      fame: fame ?? this.fame,
      price: price ?? this.price,
      dateCre: dateCre ?? this.dateCre,
      rating: rating ?? this.rating,
      name: name ?? this.name,
      eTypeFreelance: eTypeFreelance ?? this.eTypeFreelance,
      uid: uid ?? this.uid,
    );
  }

  Map<String, dynamic> toJson() {
    return {
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
      fame: map['fame'] as double,
      price: map['price'] as double,
      dateCre: DateTime.fromMillisecondsSinceEpoch(map['dateCre']),
      rating: map['rating'] as int,
      name: map['name'] as String,
      eTypeFreelance: Enums.toEnum(map['eTypeFreelance'], ETypeFreelance.values) as ETypeFreelance,
      uid: map['uid'],
    );
  }
}
