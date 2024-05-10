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
  int get gridHeight => throw _privateConstructorUsedError;
  int get gridWidth => throw _privateConstructorUsedError;
  double get gridZoom => throw _privateConstructorUsedError;
  Offset get gridOffset => throw _privateConstructorUsedError;
  bool get isGenerated => throw _privateConstructorUsedError;
  List<Hexagon>? get hexagons => throw _privateConstructorUsedError;

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
  $Res call(
      {int gridHeight,
      int gridWidth,
      double gridZoom,
      Offset gridOffset,
      bool isGenerated,
      List<Hexagon>? hexagons});
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
    Object? gridHeight = null,
    Object? gridWidth = null,
    Object? gridZoom = null,
    Object? gridOffset = null,
    Object? isGenerated = null,
    Object? hexagons = freezed,
  }) {
    return _then(_value.copyWith(
      gridHeight: null == gridHeight
          ? _value.gridHeight
          : gridHeight // ignore: cast_nullable_to_non_nullable
              as int,
      gridWidth: null == gridWidth
          ? _value.gridWidth
          : gridWidth // ignore: cast_nullable_to_non_nullable
              as int,
      gridZoom: null == gridZoom
          ? _value.gridZoom
          : gridZoom // ignore: cast_nullable_to_non_nullable
              as double,
      gridOffset: null == gridOffset
          ? _value.gridOffset
          : gridOffset // ignore: cast_nullable_to_non_nullable
              as Offset,
      isGenerated: null == isGenerated
          ? _value.isGenerated
          : isGenerated // ignore: cast_nullable_to_non_nullable
              as bool,
      hexagons: freezed == hexagons
          ? _value.hexagons
          : hexagons // ignore: cast_nullable_to_non_nullable
              as List<Hexagon>?,
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
  $Res call(
      {int gridHeight,
      int gridWidth,
      double gridZoom,
      Offset gridOffset,
      bool isGenerated,
      List<Hexagon>? hexagons});
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
    Object? gridHeight = null,
    Object? gridWidth = null,
    Object? gridZoom = null,
    Object? gridOffset = null,
    Object? isGenerated = null,
    Object? hexagons = freezed,
  }) {
    return _then(_$HexagonGridImpl(
      gridHeight: null == gridHeight
          ? _value.gridHeight
          : gridHeight // ignore: cast_nullable_to_non_nullable
              as int,
      gridWidth: null == gridWidth
          ? _value.gridWidth
          : gridWidth // ignore: cast_nullable_to_non_nullable
              as int,
      gridZoom: null == gridZoom
          ? _value.gridZoom
          : gridZoom // ignore: cast_nullable_to_non_nullable
              as double,
      gridOffset: null == gridOffset
          ? _value.gridOffset
          : gridOffset // ignore: cast_nullable_to_non_nullable
              as Offset,
      isGenerated: null == isGenerated
          ? _value.isGenerated
          : isGenerated // ignore: cast_nullable_to_non_nullable
              as bool,
      hexagons: freezed == hexagons
          ? _value._hexagons
          : hexagons // ignore: cast_nullable_to_non_nullable
              as List<Hexagon>?,
    ));
  }
}

/// @nodoc

class _$HexagonGridImpl extends _HexagonGrid {
  _$HexagonGridImpl(
      {required this.gridHeight,
      required this.gridWidth,
      this.gridZoom = 0,
      this.gridOffset = Offset.zero,
      this.isGenerated = false,
      final List<Hexagon>? hexagons})
      : _hexagons = hexagons,
        super._();

  @override
  final int gridHeight;
  @override
  final int gridWidth;
  @override
  @JsonKey()
  final double gridZoom;
  @override
  @JsonKey()
  final Offset gridOffset;
  @override
  @JsonKey()
  final bool isGenerated;
  final List<Hexagon>? _hexagons;
  @override
  List<Hexagon>? get hexagons {
    final value = _hexagons;
    if (value == null) return null;
    if (_hexagons is EqualUnmodifiableListView) return _hexagons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HexagonGrid(gridHeight: $gridHeight, gridWidth: $gridWidth, gridZoom: $gridZoom, gridOffset: $gridOffset, isGenerated: $isGenerated, hexagons: $hexagons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HexagonGridImpl &&
            (identical(other.gridHeight, gridHeight) ||
                other.gridHeight == gridHeight) &&
            (identical(other.gridWidth, gridWidth) ||
                other.gridWidth == gridWidth) &&
            (identical(other.gridZoom, gridZoom) ||
                other.gridZoom == gridZoom) &&
            (identical(other.gridOffset, gridOffset) ||
                other.gridOffset == gridOffset) &&
            (identical(other.isGenerated, isGenerated) ||
                other.isGenerated == isGenerated) &&
            const DeepCollectionEquality().equals(other._hexagons, _hexagons));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gridHeight, gridWidth, gridZoom,
      gridOffset, isGenerated, const DeepCollectionEquality().hash(_hexagons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HexagonGridImplCopyWith<_$HexagonGridImpl> get copyWith =>
      __$$HexagonGridImplCopyWithImpl<_$HexagonGridImpl>(this, _$identity);
}

abstract class _HexagonGrid extends HexagonGrid {
  factory _HexagonGrid(
      {required final int gridHeight,
      required final int gridWidth,
      final double gridZoom,
      final Offset gridOffset,
      final bool isGenerated,
      final List<Hexagon>? hexagons}) = _$HexagonGridImpl;
  _HexagonGrid._() : super._();

  @override
  int get gridHeight;
  @override
  int get gridWidth;
  @override
  double get gridZoom;
  @override
  Offset get gridOffset;
  @override
  bool get isGenerated;
  @override
  List<Hexagon>? get hexagons;
  @override
  @JsonKey(ignore: true)
  _$$HexagonGridImplCopyWith<_$HexagonGridImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
