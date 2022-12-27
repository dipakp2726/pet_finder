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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Previous _$PreviousFromJson(Map<String, dynamic> json) {
  return _Previous.fromJson(json);
}

/// @nodoc
mixin _$Previous {
  String? get href => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
abstract class _$$_PreviousCopyWith<$Res> implements $PreviousCopyWith<$Res> {
  factory _$$_PreviousCopyWith(
          _$_Previous value, $Res Function(_$_Previous) then) =
      __$$_PreviousCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? href});
}

/// @nodoc
class __$$_PreviousCopyWithImpl<$Res>
    extends _$PreviousCopyWithImpl<$Res, _$_Previous>
    implements _$$_PreviousCopyWith<$Res> {
  __$$_PreviousCopyWithImpl(
      _$_Previous _value, $Res Function(_$_Previous) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = freezed,
  }) {
    return _then(_$_Previous(
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Previous implements _Previous {
  _$_Previous({this.href});

  factory _$_Previous.fromJson(Map<String, dynamic> json) =>
      _$$_PreviousFromJson(json);

  @override
  final String? href;

  @override
  String toString() {
    return 'Previous(href: $href)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Previous &&
            (identical(other.href, href) || other.href == href));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, href);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PreviousCopyWith<_$_Previous> get copyWith =>
      __$$_PreviousCopyWithImpl<_$_Previous>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PreviousToJson(
      this,
    );
  }
}

abstract class _Previous implements Previous {
  factory _Previous({final String? href}) = _$_Previous;

  factory _Previous.fromJson(Map<String, dynamic> json) = _$_Previous.fromJson;

  @override
  String? get href;
  @override
  @JsonKey(ignore: true)
  _$$_PreviousCopyWith<_$_Previous> get copyWith =>
      throw _privateConstructorUsedError;
}
