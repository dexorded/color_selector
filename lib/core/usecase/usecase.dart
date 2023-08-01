import 'package:color_selector/core/failure/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<T, P> {
  Future<Either<Failure, T>> call(P p);
}

class NoParams {}
