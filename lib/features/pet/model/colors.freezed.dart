// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'colors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Colors _$ColorsFromJson(Map<String, dynamic> json) {
  return _Colors.fromJson(json);
}

/// @nodoc
mixin _$Colors {
  dynamic get primary => throw _privateConstructorUsedError;
  dynamic get secondary => throw _privateConstructorUsedError;
  dynamic get tertiary => throw _privateConstructorUsedError;

  /// Serializes this Colors to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Colors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ColorsCopyWith<Colors> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorsCopyWith<$Res> {
  factory $ColorsCopyWith(Colors value, $Res Function(Colors) then) =
      _$ColorsCopyWithImpl<$Res, Colors>;
  @useResult
  $Res call({dynamic primary, dynamic secondary, dynamic tertiary});
}

/// @nodoc
class _$ColorsCopyWithImpl<$Res, $Val extends Colors>
    implements $ColorsCopyWith<$Res> {
  _$ColorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Colors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = freezed,
    Object? secondary = freezed,
    Object? tertiary = freezed,
  }) {
    return _then(_value.copyWith(
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as dynamic,
      secondary: freezed == secondary
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tertiary: freezed == tertiary
          ? _value.tertiary
          : tertiary // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColorsImplCopyWith<$Res> implements $ColorsCopyWith<$Res> {
  factory _$$ColorsImplCopyWith(
          _$ColorsImpl value, $Res Function(_$ColorsImpl) then) =
      __$$ColorsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic primary, dynamic secondary, dynamic tertiary});
}

/// @nodoc
class __$$ColorsImplCopyWithImpl<$Res>
    extends _$ColorsCopyWithImpl<$Res, _$ColorsImpl>
    implements _$$ColorsImplCopyWith<$Res> {
  __$$ColorsImplCopyWithImpl(
      _$ColorsImpl _value, $Res Function(_$ColorsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Colors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = freezed,
    Object? secondary = freezed,
    Object? tertiary = freezed,
  }) {
    return _then(_$ColorsImpl(
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as dynamic,
      secondary: freezed == secondary
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tertiary: freezed == tertiary
          ? _value.tertiary
          : tertiary // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColorsImpl implements _Colors {
  _$ColorsImpl({this.primary, this.secondary, this.tertiary});

  factory _$ColorsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColorsImplFromJson(json);

  @override
  final dynamic primary;
  @override
  final dynamic secondary;
  @override
  final dynamic tertiary;

  @override
  String toString() {
    return 'Colors(primary: $primary, secondary: $secondary, tertiary: $tertiary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorsImpl &&
            const DeepCollectionEquality().equals(other.primary, primary) &&
            const DeepCollectionEquality().equals(other.secondary, secondary) &&
            const DeepCollectionEquality().equals(other.tertiary, tertiary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(primary),
      const DeepCollectionEquality().hash(secondary),
      const DeepCollectionEquality().hash(tertiary));

  /// Create a copy of Colors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorsImplCopyWith<_$ColorsImpl> get copyWith =>
      __$$ColorsImplCopyWithImpl<_$ColorsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColorsImplToJson(
      this,
    );
  }
}

abstract class _Colors implements Colors {
  factory _Colors(
      {final dynamic primary,
      final dynamic secondary,
      final dynamic tertiary}) = _$ColorsImpl;

  factory _Colors.fromJson(Map<String, dynamic> json) = _$ColorsImpl.fromJson;

  @override
  dynamic get primary;
  @override
  dynamic get secondary;
  @override
  dynamic get tertiary;

  /// Create a copy of Colors
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ColorsImplCopyWith<_$ColorsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
