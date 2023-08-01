import 'package:color_selector/core/failure/failure.dart';
import 'package:color_selector/src/domain/entities/color.dart';
import 'package:color_selector/src/domain/failures/color_failures.dart';
import 'package:color_selector/src/domain/usecases/change_color_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:color_selector/src/domain/repositories/color_repository.dart';

@GenerateNiceMocks([MockSpec<ColorRepository>()])
import 'change_color_usecase_test.mocks.dart';

const String correctRedColor = 'FF';
const String correctGreenColor = 'A4';
const String correctBlueColor = '22';
const String incorrectColor = 'T2';
const String lowerCaseColor = 'aa';
const String toLongColor = 'AVAV';
const String toSmallColor = 'A';
const String emptyColor = '';

void main() {
  group(
    'ChangeColorUseCase tests',
    () {
      final ColorRepository colorRepository = MockColorRepository();
      when(colorRepository.changeRedColor(correctRedColor)).thenAnswer(
        (realInvocation) async => const Right(unit),
      );
      when(colorRepository.changeBlueColor(correctBlueColor)).thenAnswer(
        (realInvocation) async => const Right(unit),
      );
      when(colorRepository.changeGreenColor(correctGreenColor)).thenAnswer(
        (realInvocation) async => const Right(unit),
      );

      test(
        'Red color test',
        () async {
          // Act
          final ChangeColorUseCase changeColorUseCase = ChangeColorUseCase(
            colorRepository,
          );

          // Arange
          final Either<Failure, Unit> failOrDone =
              await changeColorUseCase.call(
            ChangeColorUseCaseParams(
              type: IColorType.red,
              data: correctRedColor,
            ),
          );

          // Assert
          verify(colorRepository.changeRedColor(correctRedColor)).called(1);
          expect(failOrDone, const Right(unit));
        },
      );

      test(
        'Green color test',
        () async {
          // Act
          final ChangeColorUseCase changeColorUseCase = ChangeColorUseCase(
            colorRepository,
          );

          // Arange
          final Either<Failure, Unit> failOrDone =
              await changeColorUseCase.call(
            ChangeColorUseCaseParams(
              type: IColorType.green,
              data: correctGreenColor,
            ),
          );

          // Assert
          verify(colorRepository.changeGreenColor(correctGreenColor)).called(1);
          expect(failOrDone, const Right(unit));
        },
      );

      test(
        'Blue color test',
        () async {
          // Act
          final ChangeColorUseCase changeColorUseCase = ChangeColorUseCase(
            colorRepository,
          );

          // Arange
          final Either<Failure, Unit> failOrDone =
              await changeColorUseCase.call(
            ChangeColorUseCaseParams(
              type: IColorType.blue,
              data: correctBlueColor,
            ),
          );

          // Assert
          verify(colorRepository.changeBlueColor(correctBlueColor)).called(1);
          expect(failOrDone, const Right(unit));
        },
      );

      test(
        'Incorrect color test',
        () async {
          // Act
          final ChangeColorUseCase changeColorUseCase = ChangeColorUseCase(
            colorRepository,
          );

          // Arange
          final Either<Failure, Unit> failOrDone =
              await changeColorUseCase.call(
            ChangeColorUseCaseParams(
              type: IColorType.blue,
              data: incorrectColor,
            ),
          );

          // Assert
          verifyNever(colorRepository.changeBlueColor(incorrectColor));
          verifyNever(colorRepository.changeRedColor(incorrectColor));
          verifyNever(colorRepository.changeGreenColor(incorrectColor));
          expect(failOrDone, const Left(IncorrectColorFailure()));
        },
      );

      test(
        'Lower case data color test',
        () async {
          // Act
          final ChangeColorUseCase changeColorUseCase = ChangeColorUseCase(
            colorRepository,
          );

          // Arange
          final Either<Failure, Unit> failOrDone =
              await changeColorUseCase.call(
            ChangeColorUseCaseParams(
              type: IColorType.blue,
              data: lowerCaseColor,
            ),
          );

          // Assert
          verifyNever(colorRepository.changeBlueColor(lowerCaseColor));
          verifyNever(colorRepository.changeRedColor(lowerCaseColor));
          verifyNever(colorRepository.changeGreenColor(lowerCaseColor));
          expect(failOrDone, const Left(IncorrectColorFailure()));
        },
      );

      test(
        'Small color test',
        () async {
          // Act
          final ChangeColorUseCase changeColorUseCase = ChangeColorUseCase(
            colorRepository,
          );

          // Arange
          final Either<Failure, Unit> failOrDone =
              await changeColorUseCase.call(
            ChangeColorUseCaseParams(
              type: IColorType.blue,
              data: toSmallColor,
            ),
          );

          // Assert
          verifyNever(colorRepository.changeBlueColor(toSmallColor));
          verifyNever(colorRepository.changeRedColor(toSmallColor));
          verifyNever(colorRepository.changeGreenColor(toSmallColor));
          expect(failOrDone, const Left(IncorrectColorFailure()));
        },
      );

      test(
        'Long color test',
        () async {
          // Act
          final ChangeColorUseCase changeColorUseCase = ChangeColorUseCase(
            colorRepository,
          );

          // Arange
          final Either<Failure, Unit> failOrDone =
              await changeColorUseCase.call(
            ChangeColorUseCaseParams(
              type: IColorType.blue,
              data: toLongColor,
            ),
          );

          // Assert
          verifyNever(colorRepository.changeBlueColor(toLongColor));
          verifyNever(colorRepository.changeRedColor(toLongColor));
          verifyNever(colorRepository.changeGreenColor(toLongColor));
          expect(failOrDone, const Left(IncorrectColorFailure()));
        },
      );

      test(
        'Empty color test',
        () async {
          // Act
          final ChangeColorUseCase changeColorUseCase = ChangeColorUseCase(
            colorRepository,
          );

          // Arange
          final Either<Failure, Unit> failOrDone =
              await changeColorUseCase.call(
            ChangeColorUseCaseParams(
              type: IColorType.blue,
              data: emptyColor,
            ),
          );

          // Assert
          verifyNever(colorRepository.changeBlueColor(emptyColor));
          verifyNever(colorRepository.changeRedColor(emptyColor));
          verifyNever(colorRepository.changeGreenColor(emptyColor));
          expect(failOrDone, const Left(IncorrectColorFailure()));
        },
      );
    },
  );
}
