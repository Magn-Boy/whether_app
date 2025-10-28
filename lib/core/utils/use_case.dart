import 'package:whether_app/core/utils/type_defs.dart';

abstract class UseCaseWithParams<T, Params> {
  const UseCaseWithParams();
  ResultFuture<T> call(Params params);
}

abstract class UseCaseWithoutParams<T> {
  const UseCaseWithoutParams();
  ResultFuture<T> call();
}
