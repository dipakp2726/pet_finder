// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'next.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Next _$NextFromJson(Map<String, dynamic> json) {
  return _Next.fromJson(json);
}

/// @nodoc
mixin _$Next {
  String? get href => throw _privateConstructorUsedError;

  /// Serializes this Next to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Next
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NextCopyWith<Next> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NextCopyWith<$Res> {
  factory $NextCopyWith(Next value, $Res Function(Next) then) =
      _$NextCopyWithImpl<$Res, Next>;
  @useResult
  $Res call({String? href});
}

/// @nodoc
class _$NextCopyWithImpl<$Res, $Val extends Next>
    implements $NextCopyWith<$Res> {
  _$NextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Next
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = freezed,
  }) {
    return _then(_value.copyWith(
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NextImplCopyWith<$Res> implements $NextCopyWith<$Res> {
  factory _$$NextImplCopyWith(
          _$NextImpl value, $Res Function(_$NextImpl) then) =
      __$$NextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? href});
}

/// @nodoc
class __$$NextImplCopyWithImpl<$Res>
    extends _$NextCopyWithImpl<$Res, _$NextImpl>
    implements _$$NextImplCopyWith<$Res> {
  __$$NextImplCopyWithImpl(_$NextImpl _value, $Res Function(_$NextImpl) _then)
      : super(_value, _then);

  /// Create a copy of Next
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = freezed,
  }) {
    return _then(_$NextImpl(
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NextImpl implements _Next {
  _$NextImpl({this.href});

  factory _$NextImpl.fromJson(Map<String, dynamic> json) =>
      _$$NextImplFromJson(json);

  @override
  final String? href;

  @override
  String toString() {
    return 'Next(href: $href)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextImpl &&
            (identical(other.href, href) || other.href == href));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, href);

  /// Create a copy of Next
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NextImplCopyWith<_$NextImpl> get copyWith =>
      __$$NextImplCopyWithImpl<_$NextImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NextImplToJson(
      this,
    );
  }
}

abstract class _Next implements Next {
  factory _Next({final String? href}) = _$NextImpl;

  factory _Next.fromJson(Map<String, dynamic> json) = _$NextImpl.fromJson;

  @override
  String? get href;

  /// Create a copy of Next
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NextImplCopyWith<_$NextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
