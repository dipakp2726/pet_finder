// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'environment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Environment _$EnvironmentFromJson(Map<String, dynamic> json) {
  return _Environment.fromJson(json);
}

/// @nodoc
mixin _$Environment {
  bool? get children => throw _privateConstructorUsedError;
  bool? get dogs => throw _privateConstructorUsedError;
  bool? get cats => throw _privateConstructorUsedError;

  /// Serializes this Environment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Environment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EnvironmentCopyWith<Environment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnvironmentCopyWith<$Res> {
  factory $EnvironmentCopyWith(
          Environment value, $Res Function(Environment) then) =
      _$EnvironmentCopyWithImpl<$Res, Environment>;
  @useResult
  $Res call({bool? children, bool? dogs, bool? cats});
}

/// @nodoc
class _$EnvironmentCopyWithImpl<$Res, $Val extends Environment>
    implements $EnvironmentCopyWith<$Res> {
  _$EnvironmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Environment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = freezed,
    Object? dogs = freezed,
    Object? cats = freezed,
  }) {
    return _then(_value.copyWith(
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as bool?,
      dogs: freezed == dogs
          ? _value.dogs
          : dogs // ignore: cast_nullable_to_non_nullable
              as bool?,
      cats: freezed == cats
          ? _value.cats
          : cats // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EnvironmentImplCopyWith<$Res>
    implements $EnvironmentCopyWith<$Res> {
  factory _$$EnvironmentImplCopyWith(
          _$EnvironmentImpl value, $Res Function(_$EnvironmentImpl) then) =
      __$$EnvironmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? children, bool? dogs, bool? cats});
}

/// @nodoc
class __$$EnvironmentImplCopyWithImpl<$Res>
    extends _$EnvironmentCopyWithImpl<$Res, _$EnvironmentImpl>
    implements _$$EnvironmentImplCopyWith<$Res> {
  __$$EnvironmentImplCopyWithImpl(
      _$EnvironmentImpl _value, $Res Function(_$EnvironmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Environment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = freezed,
    Object? dogs = freezed,
    Object? cats = freezed,
  }) {
    return _then(_$EnvironmentImpl(
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as bool?,
      dogs: freezed == dogs
          ? _value.dogs
          : dogs // ignore: cast_nullable_to_non_nullable
              as bool?,
      cats: freezed == cats
          ? _value.cats
          : cats // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EnvironmentImpl implements _Environment {
  _$EnvironmentImpl({this.children, this.dogs, this.cats});

  factory _$EnvironmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnvironmentImplFromJson(json);

  @override
  final bool? children;
  @override
  final bool? dogs;
  @override
  final bool? cats;

  @override
  String toString() {
    return 'Environment(children: $children, dogs: $dogs, cats: $cats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnvironmentImpl &&
            (identical(other.children, children) ||
                other.children == children) &&
            (identical(other.dogs, dogs) || other.dogs == dogs) &&
            (identical(other.cats, cats) || other.cats == cats));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, children, dogs, cats);

  /// Create a copy of Environment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnvironmentImplCopyWith<_$EnvironmentImpl> get copyWith =>
      __$$EnvironmentImplCopyWithImpl<_$EnvironmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EnvironmentImplToJson(
      this,
    );
  }
}

abstract class _Environment implements Environment {
  factory _Environment(
      {final bool? children,
      final bool? dogs,
      final bool? cats}) = _$EnvironmentImpl;

  factory _Environment.fromJson(Map<String, dynamic> json) =
      _$EnvironmentImpl.fromJson;

  @override
  bool? get children;
  @override
  bool? get dogs;
  @override
  bool? get cats;

  /// Create a copy of Environment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnvironmentImplCopyWith<_$EnvironmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
