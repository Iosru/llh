// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hexagon_grid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HexagonGrid {
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  List<Hexagon> get hexagons => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HexagonGridCopyWith<HexagonGrid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HexagonGridCopyWith<$Res> {
  factory $HexagonGridCopyWith(
          HexagonGrid value, $Res Function(HexagonGrid) then) =
      _$HexagonGridCopyWithImpl<$Res, HexagonGrid>;
  @useResult
  $Res call({int height, int width, List<Hexagon> hexagons});
}

/// @nodoc
class _$HexagonGridCopyWithImpl<$Res, $Val extends HexagonGrid>
    implements $HexagonGridCopyWith<$Res> {
  _$HexagonGridCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? width = null,
    Object? hexagons = null,
  }) {
    return _then(_value.copyWith(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      hexagons: null == hexagons
          ? _value.hexagons
          : hexagons // ignore: cast_nullable_to_non_nullable
              as List<Hexagon>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HexagonGridImplCopyWith<$Res>
    implements $HexagonGridCopyWith<$Res> {
  factory _$$HexagonGridImplCopyWith(
          _$HexagonGridImpl value, $Res Function(_$HexagonGridImpl) then) =
      __$$HexagonGridImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int height, int width, List<Hexagon> hexagons});
}

/// @nodoc
class __$$HexagonGridImplCopyWithImpl<$Res>
    extends _$HexagonGridCopyWithImpl<$Res, _$HexagonGridImpl>
    implements _$$HexagonGridImplCopyWith<$Res> {
  __$$HexagonGridImplCopyWithImpl(
      _$HexagonGridImpl _value, $Res Function(_$HexagonGridImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? width = null,
    Object? hexagons = null,
  }) {
    return _then(_$HexagonGridImpl(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      hexagons: null == hexagons
          ? _value._hexagons
          : hexagons // ignore: cast_nullable_to_non_nullable
              as List<Hexagon>,
    ));
  }
}

/// @nodoc

class _$HexagonGridImpl extends _HexagonGrid {
  _$HexagonGridImpl(
      {required this.height,
      required this.width,
      final List<Hexagon> hexagons = const []})
      : _hexagons = hexagons,
        super._();

  @override
  final int height;
  @override
  final int width;
  final List<Hexagon> _hexagons;
  @override
  @JsonKey()
  List<Hexagon> get hexagons {
    if (_hexagons is EqualUnmodifiableListView) return _hexagons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hexagons);
  }

  @override
  String toString() {
    return 'HexagonGrid(height: $height, width: $width, hexagons: $hexagons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HexagonGridImpl &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            const DeepCollectionEquality().equals(other._hexagons, _hexagons));
  }

  @override
  int get hashCode => Object.hash(runtimeType, height, width,
      const DeepCollectionEquality().hash(_hexagons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HexagonGridImplCopyWith<_$HexagonGridImpl> get copyWith =>
      __$$HexagonGridImplCopyWithImpl<_$HexagonGridImpl>(this, _$identity);
}

abstract class _HexagonGrid extends HexagonGrid {
  factory _HexagonGrid(
      {required final int height,
      required final int width,
      final List<Hexagon> hexagons}) = _$HexagonGridImpl;
  _HexagonGrid._() : super._();

  @override
  int get height;
  @override
  int get width;
  @override
  List<Hexagon> get hexagons;
  @override
  @JsonKey(ignore: true)
  _$$HexagonGridImplCopyWith<_$HexagonGridImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
