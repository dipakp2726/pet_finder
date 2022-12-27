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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Colors _$ColorsFromJson(Map<String, dynamic> json) {
  return _Colors.fromJson(json);
}

/// @nodoc
mixin _$Colors {
  dynamic get primary => throw _privateConstructorUsedError;
  dynamic get secondary => throw _privateConstructorUsedError;
  dynamic get tertiary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
abstract class _$$_ColorsCopyWith<$Res> implements $ColorsCopyWith<$Res> {
  factory _$$_ColorsCopyWith(_$_Colors value, $Res Function(_$_Colors) then) =
      __$$_ColorsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic primary, dynamic secondary, dynamic tertiary});
}

/// @nodoc
class __$$_ColorsCopyWithImpl<$Res>
    extends _$ColorsCopyWithImpl<$Res, _$_Colors>
    implements _$$_ColorsCopyWith<$Res> {
  __$$_ColorsCopyWithImpl(_$_Colors _value, $Res Function(_$_Colors) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = freezed,
    Object? secondary = freezed,
    Object? tertiary = freezed,
  }) {
    return _then(_$_Colors(
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
class _$_Colors implements _Colors {
  _$_Colors({this.primary, this.secondary, this.tertiary});

  factory _$_Colors.fromJson(Map<String, dynamic> json) =>
      _$$_ColorsFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Colors &&
            const DeepCollectionEquality().equals(other.primary, primary) &&
            const DeepCollectionEquality().equals(other.secondary, secondary) &&
            const DeepCollectionEquality().equals(other.tertiary, tertiary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(primary),
      const DeepCollectionEquality().hash(secondary),
      const DeepCollectionEquality().hash(tertiary));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ColorsCopyWith<_$_Colors> get copyWith =>
      __$$_ColorsCopyWithImpl<_$_Colors>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ColorsToJson(
      this,
    );
  }
}

abstract class _Colors implements Colors {
  factory _Colors(
      {final dynamic primary,
      final dynamic secondary,
      final dynamic tertiary}) = _$_Colors;

  factory _Colors.fromJson(Map<String, dynamic> json) = _$_Colors.fromJson;

  @override
  dynamic get primary;
  @override
  dynamic get secondary;
  @override
  dynamic get tertiary;
  @override
  @JsonKey(ignore: true)
  _$$_ColorsCopyWith<_$_Colors> get copyWith =>
      throw _privateConstructorUsedError;
}
