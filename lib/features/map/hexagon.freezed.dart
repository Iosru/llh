// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hexagon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Hexagon {
  int get x => throw _privateConstructorUsedError;
  set x(int value) => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;
  set y(int value) => throw _privateConstructorUsedError;
  double get radius => throw _privateConstructorUsedError;
  set radius(double value) => throw _privateConstructorUsedError;
  Offset get offset => throw _privateConstructorUsedError;
  set offset(Offset value) => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  set color(Color value) => throw _privateConstructorUsedError;
  double get chance => throw _privateConstructorUsedError;
  set chance(double value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HexagonCopyWith<Hexagon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HexagonCopyWith<$Res> {
  factory $HexagonCopyWith(Hexagon value, $Res Function(Hexagon) then) =
      _$HexagonCopyWithImpl<$Res, Hexagon>;
  @useResult
  $Res call(
      {int x, int y, double radius, Offset offset, Color color, double chance});
}

/// @nodoc
class _$HexagonCopyWithImpl<$Res, $Val extends Hexagon>
    implements $HexagonCopyWith<$Res> {
  _$HexagonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? radius = null,
    Object? offset = null,
    Object? color = null,
    Object? chance = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      radius: null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      chance: null == chance
          ? _value.chance
          : chance // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HexagonImplCopyWith<$Res> implements $HexagonCopyWith<$Res> {
  factory _$$HexagonImplCopyWith(
          _$HexagonImpl value, $Res Function(_$HexagonImpl) then) =
      __$$HexagonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int x, int y, double radius, Offset offset, Color color, double chance});
}

/// @nodoc
class __$$HexagonImplCopyWithImpl<$Res>
    extends _$HexagonCopyWithImpl<$Res, _$HexagonImpl>
    implements _$$HexagonImplCopyWith<$Res> {
  __$$HexagonImplCopyWithImpl(
      _$HexagonImpl _value, $Res Function(_$HexagonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? radius = null,
    Object? offset = null,
    Object? color = null,
    Object? chance = null,
  }) {
    return _then(_$HexagonImpl(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      radius: null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      chance: null == chance
          ? _value.chance
          : chance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$HexagonImpl extends _Hexagon {
  _$HexagonImpl(
      {this.x = 0,
      this.y = 0,
      this.radius = 36,
      this.offset = const Offset(0, 0),
      this.color = Colors.blue,
      this.chance = 75.0})
      : super._();

  @override
  @JsonKey()
  int x;
  @override
  @JsonKey()
  int y;
  @override
  @JsonKey()
  double radius;
  @override
  @JsonKey()
  Offset offset;
  @override
  @JsonKey()
  Color color;
  @override
  @JsonKey()
  double chance;

  @override
  String toString() {
    return 'Hexagon(x: $x, y: $y, radius: $radius, offset: $offset, color: $color, chance: $chance)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HexagonImplCopyWith<_$HexagonImpl> get copyWith =>
      __$$HexagonImplCopyWithImpl<_$HexagonImpl>(this, _$identity);
}

abstract class _Hexagon extends Hexagon {
  factory _Hexagon(
      {int x,
      int y,
      double radius,
      Offset offset,
      Color color,
      double chance}) = _$HexagonImpl;
  _Hexagon._() : super._();

  @override
  int get x;
  set x(int value);
  @override
  int get y;
  set y(int value);
  @override
  double get radius;
  set radius(double value);
  @override
  Offset get offset;
  set offset(Offset value);
  @override
  Color get color;
  set color(Color value);
  @override
  double get chance;
  set chance(double value);
  @override
  @JsonKey(ignore: true)
  _$$HexagonImplCopyWith<_$HexagonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
