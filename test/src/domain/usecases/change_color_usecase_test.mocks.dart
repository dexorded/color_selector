// Mocks generated by Mockito 5.4.2 from annotations
// in color_selector/test/src/domain/usecases/change_color_usecase_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:color_selector/core/failure/failure.dart' as _i5;
import 'package:color_selector/src/domain/entities/color.dart' as _i6;
import 'package:color_selector/src/domain/repositories/color_repository.dart'
    as _i3;
import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ColorRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockColorRepository extends _i1.Mock implements _i3.ColorRepository {
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.IColor>> getCurrentColor() =>
      (super.noSuchMethod(
        Invocation.method(
          #getCurrentColor,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i6.IColor>>.value(
            _FakeEither_0<_i5.Failure, _i6.IColor>(
          this,
          Invocation.method(
            #getCurrentColor,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.Failure, _i6.IColor>>.value(
                _FakeEither_0<_i5.Failure, _i6.IColor>(
          this,
          Invocation.method(
            #getCurrentColor,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i6.IColor>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i2.Unit>> changeRedColor(String? data) =>
      (super.noSuchMethod(
        Invocation.method(
          #changeRedColor,
          [data],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i2.Unit>>.value(
            _FakeEither_0<_i5.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #changeRedColor,
            [data],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.Failure, _i2.Unit>>.value(
                _FakeEither_0<_i5.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #changeRedColor,
            [data],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i2.Unit>> changeGreenColor(
          String? data) =>
      (super.noSuchMethod(
        Invocation.method(
          #changeGreenColor,
          [data],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i2.Unit>>.value(
            _FakeEither_0<_i5.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #changeGreenColor,
            [data],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.Failure, _i2.Unit>>.value(
                _FakeEither_0<_i5.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #changeGreenColor,
            [data],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i2.Unit>> changeBlueColor(String? data) =>
      (super.noSuchMethod(
        Invocation.method(
          #changeBlueColor,
          [data],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i2.Unit>>.value(
            _FakeEither_0<_i5.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #changeBlueColor,
            [data],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Either<_i5.Failure, _i2.Unit>>.value(
                _FakeEither_0<_i5.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #changeBlueColor,
            [data],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i2.Unit>>);
}
