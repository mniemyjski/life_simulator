enum ETypeFreelance {
  book,
  course,
  youtube,
  application,
}

abstract class FreelanceBase {
  final String id;
  final String name;
  final ETypeFreelance eTypeFreelance;
  final double fame;
  final double price;
  final int level;

  const FreelanceBase(this.id, this.name, this.eTypeFreelance, this.fame, this.price, this.level);
}
