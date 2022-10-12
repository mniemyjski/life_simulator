import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

part 'business_model.g.dart';

@Collection(ignore: {'props', 'stringify'})
@Name('Businesses')
class Business extends Equatable {
  final Id id;
  final String name;
  final DateTime dateCre;
  final int efficiencyEmployees;
  final int efficiencyScientist;
  final int maxWorkers;
  final int maxScientist;
  final int maxAccountant;
  final int maxAnalyst;
  final int maxManager;
  final int maxMarketer;

  final int countWorkers;
  final int countScientist;
  final int countAccountant;
  final int countAnalyst;
  final int countManager;
  final int countMarketer;

  const Business({
    this.id = Isar.autoIncrement,
    required this.name,
    required this.dateCre,
    this.maxWorkers = 10,
    this.maxScientist = 2,
    this.efficiencyEmployees = 1,
    this.efficiencyScientist = 1,
    this.maxAccountant = 0,
    this.maxAnalyst = 0,
    this.maxManager = 0,
    this.maxMarketer = 0,
    this.countWorkers = 0,
    this.countScientist = 0,
    this.countAccountant = 0,
    this.countAnalyst = 0,
    this.countManager = 0,
    this.countMarketer = 0,
  })  : assert(maxAccountant <= 1),
        assert(maxAccountant >= 0),
        assert(maxManager <= 1),
        assert(maxManager >= 0),
        assert(maxMarketer <= 1),
        assert(maxMarketer >= 0),
        assert(maxAnalyst <= 1),
        assert(maxAnalyst >= 0);

  @override
  List<Object?> get props => [
        id,
        name,
        maxWorkers,
        maxScientist,
        efficiencyEmployees,
        efficiencyScientist,
        maxAccountant,
        maxAnalyst,
        maxManager,
        maxMarketer,
        dateCre,
        countWorkers,
        countScientist,
        countAccountant,
        countAnalyst,
        countManager,
        countMarketer
      ];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'dateCre': dateCre.millisecondsSinceEpoch,
      'maxWorkers': maxWorkers,
      'maxScientist': maxScientist,
      'efficiencyEmployees': efficiencyEmployees,
      'efficiencyScientist': efficiencyScientist,
      'maxAccountant': maxAccountant,
      'maxAnalyst': maxAnalyst,
      'maxManager': maxManager,
      'maxMarketer': maxMarketer,
      'countWorkers': countWorkers,
      'countScientist': countScientist,
      'countAccountant': countAccountant,
      'countAnalyst': countAnalyst,
      'countManager': countManager,
      'countMarketer': countMarketer,
    };
  }

  factory Business.fromJson(Map<String, dynamic> map) {
    return Business(
      id: map['id'] as Id,
      name: map['name'] as String,
      dateCre: DateTime.fromMillisecondsSinceEpoch(map['dateCre']),
      maxWorkers: map['maxWorkers'] as int,
      maxScientist: map['maxScientist'] as int,
      efficiencyEmployees: map['efficiencyEmployees'] as int,
      efficiencyScientist: map['efficiencyScientist'] as int,
      maxAccountant: map['maxAccountant'] as int,
      maxAnalyst: map['maxAnalyst'] as int,
      maxManager: map['maxManager'] as int,
      maxMarketer: map['maxMarketer'] as int,
      countWorkers: map['countWorkers'] as int,
      countScientist: map['countScientist'] as int,
      countAccountant: map['countAccountant'] as int,
      countAnalyst: map['countAnalyst'] as int,
      countManager: map['countManager'] as int,
      countMarketer: map['countMarketer'] as int,
    );
  }

  Business copyWith({
    Id? id,
    String? name,
    DateTime? dateCre,
    int? efficiencyEmployees,
    int? efficiencyScientist,
    int? maxWorkers,
    int? maxScientist,
    int? maxAccountant,
    int? maxAnalyst,
    int? maxManager,
    int? maxMarketer,
    int? countWorkers,
    int? countScientist,
    int? countAccountant,
    int? countAnalyst,
    int? countManager,
    int? countMarketer,
  }) {
    return Business(
      id: id ?? this.id,
      name: name ?? this.name,
      dateCre: dateCre ?? this.dateCre,
      efficiencyEmployees: efficiencyEmployees ?? this.efficiencyEmployees,
      efficiencyScientist: efficiencyScientist ?? this.efficiencyScientist,
      maxWorkers: maxWorkers ?? this.maxWorkers,
      maxScientist: maxScientist ?? this.maxScientist,
      maxAccountant: maxAccountant ?? this.maxAccountant,
      maxAnalyst: maxAnalyst ?? this.maxAnalyst,
      maxManager: maxManager ?? this.maxManager,
      maxMarketer: maxMarketer ?? this.maxMarketer,
      countWorkers: countWorkers ?? this.countWorkers,
      countScientist: countScientist ?? this.countScientist,
      countAccountant: countAccountant ?? this.countAccountant,
      countAnalyst: countAnalyst ?? this.countAnalyst,
      countManager: countManager ?? this.countManager,
      countMarketer: countMarketer ?? this.countMarketer,
    );
  }
}
