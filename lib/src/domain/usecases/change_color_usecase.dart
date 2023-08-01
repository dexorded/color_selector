import 'package:color_selector/core/failure/failure.dart';
import 'package:color_selector/core/usecase/usecase.dart';
import 'package:color_selector/src/domain/entities/color.dart';
import 'package:color_selector/src/domain/failures/color_failures.dart';
import 'package:color_selector/src/domain/repositories/color_repository.dart';
import 'package:color_selector/src/domain/validators/color_validator.dart';
import 'package:dartz/dartz.dart';

class ChangeColorUseCase extends UseCase<Unit, ChangeColorUseCaseParams> {
  final ColorRepository repository;

  ChangeColorUseCase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(ChangeColorUseCaseParams p) async {
    if (ColorValidator.check(p.data)) {
      switch (p.type) {
        case IColorType.red:
          repository.changeRedColor(p.data);
          break;
        case IColorType.blue:
          repository.changeBlueColor(p.data);
          break;
        case IColorType.green:
          repository.changeGreenColor(p.data);
          break;
      }
      return const Right(unit);
    } else {
      return const Left(IncorrectColorFailure());
    }
  }
}

class ChangeColorUseCaseParams {
  final IColorType type;
  final String data;

  ChangeColorUseCaseParams({
    required this.type,
    required this.data,
  });
}
