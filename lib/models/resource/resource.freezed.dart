// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resource.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Resource {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  set description(String value) => throw _privateConstructorUsedError;
  Rarity get rarity => throw _privateConstructorUsedError;
  set rarity(Rarity value) => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  set icon(String value) => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  set amount(double value) => throw _privateConstructorUsedError;
  double get capacity => throw _privateConstructorUsedError;
  set capacity(double value) => throw _privateConstructorUsedError;
  double get replenishRate => throw _privateConstructorUsedError;
  set replenishRate(double value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResourceCopyWith<Resource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceCopyWith<$Res> {
  factory $ResourceCopyWith(Resource value, $Res Function(Resource) then) =
      _$ResourceCopyWithImpl<$Res, Resource>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      Rarity rarity,
      String icon,
      double amount,
      double capacity,
      double replenishRate});
}

/// @nodoc
class _$ResourceCopyWithImpl<$Res, $Val extends Resource>
    implements $ResourceCopyWith<$Res> {
  _$ResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? rarity = null,
    Object? icon = null,
    Object? amount = null,
    Object? capacity = null,
    Object? replenishRate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as Rarity,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as double,
      replenishRate: null == replenishRate
          ? _value.replenishRate
          : replenishRate // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResourceImplCopyWith<$Res>
    implements $ResourceCopyWith<$Res> {
  factory _$$ResourceImplCopyWith(
          _$ResourceImpl value, $Res Function(_$ResourceImpl) then) =
      __$$ResourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      Rarity rarity,
      String icon,
      double amount,
      double capacity,
      double replenishRate});
}

/// @nodoc
class __$$ResourceImplCopyWithImpl<$Res>
    extends _$ResourceCopyWithImpl<$Res, _$ResourceImpl>
    implements _$$ResourceImplCopyWith<$Res> {
  __$$ResourceImplCopyWithImpl(
      _$ResourceImpl _value, $Res Function(_$ResourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? rarity = null,
    Object? icon = null,
    Object? amount = null,
    Object? capacity = null,
    Object? replenishRate = null,
  }) {
    return _then(_$ResourceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as Rarity,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as double,
      replenishRate: null == replenishRate
          ? _value.replenishRate
          : replenishRate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ResourceImpl implements _Resource {
  _$ResourceImpl(
      {this.id = 'id',
      this.name = 'name',
      this.description = '',
      this.rarity = Rarity.Common,
      this.icon = 'assets/placeholder_icon.png',
      this.amount = 100.0,
      this.capacity = 100.0,
      this.replenishRate = 0.01});

  @override
  @JsonKey()
  String id;
  @override
  @JsonKey()
  String name;
  @override
  @JsonKey()
  String description;
  @override
  @JsonKey()
  Rarity rarity;
  @override
  @JsonKey()
  String icon;
  @override
  @JsonKey()
  double amount;
  @override
  @JsonKey()
  double capacity;
  @override
  @JsonKey()
  double replenishRate;

  @override
  String toString() {
    return 'Resource(id: $id, name: $name, description: $description, rarity: $rarity, icon: $icon, amount: $amount, capacity: $capacity, replenishRate: $replenishRate)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceImplCopyWith<_$ResourceImpl> get copyWith =>
      __$$ResourceImplCopyWithImpl<_$ResourceImpl>(this, _$identity);
}

abstract class _Resource implements Resource {
  factory _Resource(
      {String id,
      String name,
      String description,
      Rarity rarity,
      String icon,
      double amount,
      double capacity,
      double replenishRate}) = _$ResourceImpl;

  @override
  String get id;
  set id(String value);
  @override
  String get name;
  set name(String value);
  @override
  String get description;
  set description(String value);
  @override
  Rarity get rarity;
  set rarity(Rarity value);
  @override
  String get icon;
  set icon(String value);
  @override
  double get amount;
  set amount(double value);
  @override
  double get capacity;
  set capacity(double value);
  @override
  double get replenishRate;
  set replenishRate(double value);
  @override
  @JsonKey(ignore: true)
  _$$ResourceImplCopyWith<_$ResourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
