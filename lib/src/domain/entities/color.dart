import 'package:equatable/equatable.dart';

class IColor extends Equatable {
  final String r;
  final String g;
  final String b;

  const IColor({
    required this.r,
    required this.g,
    required this.b,
  });

  @override
  List<Object?> get props => [r, g, b];
}

enum IColorType {
  red,
  green,
  blue,
}
