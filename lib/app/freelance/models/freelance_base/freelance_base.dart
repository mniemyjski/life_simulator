enum ETypeFreelance {
  book,
  course,
  youtube,
  application,
}

mixin FreelanceBase {
  String get id;
  String get name;
  ETypeFreelance get eTypeFreelance;
  double get fame;
  double get price;
}
