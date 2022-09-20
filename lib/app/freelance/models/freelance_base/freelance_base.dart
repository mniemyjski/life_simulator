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

  const FreelanceBase(this.id, this.name, this.eTypeFreelance);
}
