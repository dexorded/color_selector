import 'package:color_selector/core/failure/failure.dart';
import 'package:color_selector/core/usecase/usecase.dart';
import 'package:color_selector/src/domain/entities/color.dart';
import 'package:color_selector/src/domain/repositories/color_repository.dart';
import 'package:dartz/dartz.dart';

class GetColorUseCase extends UseCase<IColor, NoParams> {
  final ColorRepository repository;

  GetColorUseCase(this.repository);

  @override
  Future<Either<Failure, IColor>> call(NoParams p) {
    throw UnimplementedError();
  }
}
