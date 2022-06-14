import 'package:dartz/dartz.dart';

import '../app/failure/models/failure_model.dart';

extension TaskX<T extends Either<Object, U>, U> on Task<T> {
  Task<Either<Failure, U>> mapLeftToFailure() {
    return this.map(
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
  DateTime onlyDate() => DateTime(this.year, this.month, this.day);
}
