import 'package:color_selector/core/failure/failure.dart';
import 'package:color_selector/src/domain/entities/color.dart';
import 'package:dartz/dartz.dart';

abstract class ColorRepository {
  Future<Either<Failure, IColor>> getCurrentColor();
  Future<Either<Failure, Unit>> changeRedColor(String data);
  Future<Either<Failure, Unit>> changeGreenColor(String data);
  Future<Either<Failure, Unit>> changeBlueColor(String data);
}
