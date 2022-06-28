import 'package:dartz/dartz.dart';

import '../app/failure/models/failure_model.dart';
import 'utilities.dart';

extension TaskX<T extends Either<Object, U>, U> on Task<T> {
  Task<Either<Failure, U>> mapLeftToFailure() {
    return map(
      (either) => either.leftMap((obj) {
        try {
          return obj as Failure;
        } catch (e) {
          throw obj;
        }
      }),
    );
  }
}

extension DateT on DateTime {
  DateTime onlyDate() => DateTime(year, month, day);
  String onlyDateToString() {
    if (year < 99) return DateFormat('yy/MM/dd').format(DateTime(year, month, day));
    if (year < 999) return DateFormat('yyy/MM/dd').format(DateTime(year, month, day));
    if (year < 9999) return DateFormat('yyyy/MM/dd').format(DateTime(year, month, day));
    throw 'error';
  }
}
