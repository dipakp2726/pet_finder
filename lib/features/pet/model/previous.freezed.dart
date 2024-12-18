// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'previous.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Previous _$PreviousFromJson(Map<String, dynamic> json) {
  return _Previous.fromJson(json);
}

/// @nodoc
mixin _$Previous {
  String? get href => throw _privateConstructorUsedError;

  /// Serializes this Previous to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Previous
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PreviousCopyWith<Previous> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviousCopyWith<$Res> {
  factory $PreviousCopyWith(Previous value, $Res Function(Previous) then) =
      _$PreviousCopyWithImpl<$Res, Previous>;
  @useResult
  $Res call({String? href});
}

/// @nodoc
class _$PreviousCopyWithImpl<$Res, $Val extends Previous>
    implements $PreviousCopyWith<$Res> {
  _$PreviousCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Previous
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
abstract class _$$PreviousImplCopyWith<$Res>
    implements $PreviousCopyWith<$Res> {
  factory _$$PreviousImplCopyWith(
          _$PreviousImpl value, $Res Function(_$PreviousImpl) then) =
      __$$PreviousImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? href});
}

/// @nodoc
class __$$PreviousImplCopyWithImpl<$Res>
    extends _$PreviousCopyWithImpl<$Res, _$PreviousImpl>
    implements _$$PreviousImplCopyWith<$Res> {
  __$$PreviousImplCopyWithImpl(
      _$PreviousImpl _value, $Res Function(_$PreviousImpl) _then)
      : super(_value, _then);

  /// Create a copy of Previous
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = freezed,
  }) {
    return _then(_$PreviousImpl(
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreviousImpl implements _Previous {
  _$PreviousImpl({this.href});

  factory _$PreviousImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreviousImplFromJson(json);

  @override
  final String? href;

  @override
  String toString() {
    return 'Previous(href: $href)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviousImpl &&
            (identical(other.href, href) || other.href == href));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, href);

  /// Create a copy of Previous
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreviousImplCopyWith<_$PreviousImpl> get copyWith =>
      __$$PreviousImplCopyWithImpl<_$PreviousImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreviousImplToJson(
      this,
    );
  }
}

abstract class _Previous implements Previous {
  factory _Previous({final String? href}) = _$PreviousImpl;

  factory _Previous.fromJson(Map<String, dynamic> json) =
      _$PreviousImpl.fromJson;

  @override
  String? get href;

  /// Create a copy of Previous
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreviousImplCopyWith<_$PreviousImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
