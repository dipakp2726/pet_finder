// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breeds.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Breeds _$BreedsFromJson(Map<String, dynamic> json) {
  return _Breeds.fromJson(json);
}

/// @nodoc
mixin _$Breeds {
  String? get primary => throw _privateConstructorUsedError;
  dynamic get secondary => throw _privateConstructorUsedError;
  bool? get mixed => throw _privateConstructorUsedError;
  bool? get unknown => throw _privateConstructorUsedError;

  /// Serializes this Breeds to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Breeds
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BreedsCopyWith<Breeds> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreedsCopyWith<$Res> {
  factory $BreedsCopyWith(Breeds value, $Res Function(Breeds) then) =
      _$BreedsCopyWithImpl<$Res, Breeds>;
  @useResult
  $Res call({String? primary, dynamic secondary, bool? mixed, bool? unknown});
}

/// @nodoc
class _$BreedsCopyWithImpl<$Res, $Val extends Breeds>
    implements $BreedsCopyWith<$Res> {
  _$BreedsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Breeds
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = freezed,
    Object? secondary = freezed,
    Object? mixed = freezed,
    Object? unknown = freezed,
  }) {
    return _then(_value.copyWith(
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as String?,
      secondary: freezed == secondary
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mixed: freezed == mixed
          ? _value.mixed
          : mixed // ignore: cast_nullable_to_non_nullable
              as bool?,
      unknown: freezed == unknown
          ? _value.unknown
          : unknown // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BreedsImplCopyWith<$Res> implements $BreedsCopyWith<$Res> {
  factory _$$BreedsImplCopyWith(
          _$BreedsImpl value, $Res Function(_$BreedsImpl) then) =
      __$$BreedsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? primary, dynamic secondary, bool? mixed, bool? unknown});
}

/// @nodoc
class __$$BreedsImplCopyWithImpl<$Res>
    extends _$BreedsCopyWithImpl<$Res, _$BreedsImpl>
    implements _$$BreedsImplCopyWith<$Res> {
  __$$BreedsImplCopyWithImpl(
      _$BreedsImpl _value, $Res Function(_$BreedsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Breeds
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = freezed,
    Object? secondary = freezed,
    Object? mixed = freezed,
    Object? unknown = freezed,
  }) {
    return _then(_$BreedsImpl(
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as String?,
      secondary: freezed == secondary
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mixed: freezed == mixed
          ? _value.mixed
          : mixed // ignore: cast_nullable_to_non_nullable
              as bool?,
      unknown: freezed == unknown
          ? _value.unknown
          : unknown // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BreedsImpl implements _Breeds {
  _$BreedsImpl({this.primary, this.secondary, this.mixed, this.unknown});

  factory _$BreedsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BreedsImplFromJson(json);

  @override
  final String? primary;
  @override
  final dynamic secondary;
  @override
  final bool? mixed;
  @override
  final bool? unknown;

  @override
  String toString() {
    return 'Breeds(primary: $primary, secondary: $secondary, mixed: $mixed, unknown: $unknown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreedsImpl &&
            (identical(other.primary, primary) || other.primary == primary) &&
            const DeepCollectionEquality().equals(other.secondary, secondary) &&
            (identical(other.mixed, mixed) || other.mixed == mixed) &&
            (identical(other.unknown, unknown) || other.unknown == unknown));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, primary,
      const DeepCollectionEquality().hash(secondary), mixed, unknown);

  /// Create a copy of Breeds
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BreedsImplCopyWith<_$BreedsImpl> get copyWith =>
      __$$BreedsImplCopyWithImpl<_$BreedsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BreedsImplToJson(
      this,
    );
  }
}

abstract class _Breeds implements Breeds {
  factory _Breeds(
      {final String? primary,
      final dynamic secondary,
      final bool? mixed,
      final bool? unknown}) = _$BreedsImpl;

  factory _Breeds.fromJson(Map<String, dynamic> json) = _$BreedsImpl.fromJson;

  @override
  String? get primary;
  @override
  dynamic get secondary;
  @override
  bool? get mixed;
  @override
  bool? get unknown;

  /// Create a copy of Breeds
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BreedsImplCopyWith<_$BreedsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
