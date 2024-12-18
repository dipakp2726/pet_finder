// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attributes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Attributes _$AttributesFromJson(Map<String, dynamic> json) {
  return _Attributes.fromJson(json);
}

/// @nodoc
mixin _$Attributes {
  @JsonKey(name: 'spayed_neutered')
  bool? get spayedNeutered => throw _privateConstructorUsedError;
  @JsonKey(name: 'house_trained')
  bool? get houseTrained => throw _privateConstructorUsedError;
  dynamic get declawed => throw _privateConstructorUsedError;
  @JsonKey(name: 'special_needs')
  bool? get specialNeeds => throw _privateConstructorUsedError;
  @JsonKey(name: 'shots_current')
  bool? get shotsCurrent => throw _privateConstructorUsedError;

  /// Serializes this Attributes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Attributes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttributesCopyWith<Attributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributesCopyWith<$Res> {
  factory $AttributesCopyWith(
          Attributes value, $Res Function(Attributes) then) =
      _$AttributesCopyWithImpl<$Res, Attributes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'spayed_neutered') bool? spayedNeutered,
      @JsonKey(name: 'house_trained') bool? houseTrained,
      dynamic declawed,
      @JsonKey(name: 'special_needs') bool? specialNeeds,
      @JsonKey(name: 'shots_current') bool? shotsCurrent});
}

/// @nodoc
class _$AttributesCopyWithImpl<$Res, $Val extends Attributes>
    implements $AttributesCopyWith<$Res> {
  _$AttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Attributes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spayedNeutered = freezed,
    Object? houseTrained = freezed,
    Object? declawed = freezed,
    Object? specialNeeds = freezed,
    Object? shotsCurrent = freezed,
  }) {
    return _then(_value.copyWith(
      spayedNeutered: freezed == spayedNeutered
          ? _value.spayedNeutered
          : spayedNeutered // ignore: cast_nullable_to_non_nullable
              as bool?,
      houseTrained: freezed == houseTrained
          ? _value.houseTrained
          : houseTrained // ignore: cast_nullable_to_non_nullable
              as bool?,
      declawed: freezed == declawed
          ? _value.declawed
          : declawed // ignore: cast_nullable_to_non_nullable
              as dynamic,
      specialNeeds: freezed == specialNeeds
          ? _value.specialNeeds
          : specialNeeds // ignore: cast_nullable_to_non_nullable
              as bool?,
      shotsCurrent: freezed == shotsCurrent
          ? _value.shotsCurrent
          : shotsCurrent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttributesImplCopyWith<$Res>
    implements $AttributesCopyWith<$Res> {
  factory _$$AttributesImplCopyWith(
          _$AttributesImpl value, $Res Function(_$AttributesImpl) then) =
      __$$AttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'spayed_neutered') bool? spayedNeutered,
      @JsonKey(name: 'house_trained') bool? houseTrained,
      dynamic declawed,
      @JsonKey(name: 'special_needs') bool? specialNeeds,
      @JsonKey(name: 'shots_current') bool? shotsCurrent});
}

/// @nodoc
class __$$AttributesImplCopyWithImpl<$Res>
    extends _$AttributesCopyWithImpl<$Res, _$AttributesImpl>
    implements _$$AttributesImplCopyWith<$Res> {
  __$$AttributesImplCopyWithImpl(
      _$AttributesImpl _value, $Res Function(_$AttributesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Attributes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spayedNeutered = freezed,
    Object? houseTrained = freezed,
    Object? declawed = freezed,
    Object? specialNeeds = freezed,
    Object? shotsCurrent = freezed,
  }) {
    return _then(_$AttributesImpl(
      spayedNeutered: freezed == spayedNeutered
          ? _value.spayedNeutered
          : spayedNeutered // ignore: cast_nullable_to_non_nullable
              as bool?,
      houseTrained: freezed == houseTrained
          ? _value.houseTrained
          : houseTrained // ignore: cast_nullable_to_non_nullable
              as bool?,
      declawed: freezed == declawed
          ? _value.declawed
          : declawed // ignore: cast_nullable_to_non_nullable
              as dynamic,
      specialNeeds: freezed == specialNeeds
          ? _value.specialNeeds
          : specialNeeds // ignore: cast_nullable_to_non_nullable
              as bool?,
      shotsCurrent: freezed == shotsCurrent
          ? _value.shotsCurrent
          : shotsCurrent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttributesImpl implements _Attributes {
  _$AttributesImpl(
      {@JsonKey(name: 'spayed_neutered') this.spayedNeutered,
      @JsonKey(name: 'house_trained') this.houseTrained,
      this.declawed,
      @JsonKey(name: 'special_needs') this.specialNeeds,
      @JsonKey(name: 'shots_current') this.shotsCurrent});

  factory _$AttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributesImplFromJson(json);

  @override
  @JsonKey(name: 'spayed_neutered')
  final bool? spayedNeutered;
  @override
  @JsonKey(name: 'house_trained')
  final bool? houseTrained;
  @override
  final dynamic declawed;
  @override
  @JsonKey(name: 'special_needs')
  final bool? specialNeeds;
  @override
  @JsonKey(name: 'shots_current')
  final bool? shotsCurrent;

  @override
  String toString() {
    return 'Attributes(spayedNeutered: $spayedNeutered, houseTrained: $houseTrained, declawed: $declawed, specialNeeds: $specialNeeds, shotsCurrent: $shotsCurrent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributesImpl &&
            (identical(other.spayedNeutered, spayedNeutered) ||
                other.spayedNeutered == spayedNeutered) &&
            (identical(other.houseTrained, houseTrained) ||
                other.houseTrained == houseTrained) &&
            const DeepCollectionEquality().equals(other.declawed, declawed) &&
            (identical(other.specialNeeds, specialNeeds) ||
                other.specialNeeds == specialNeeds) &&
            (identical(other.shotsCurrent, shotsCurrent) ||
                other.shotsCurrent == shotsCurrent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      spayedNeutered,
      houseTrained,
      const DeepCollectionEquality().hash(declawed),
      specialNeeds,
      shotsCurrent);

  /// Create a copy of Attributes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributesImplCopyWith<_$AttributesImpl> get copyWith =>
      __$$AttributesImplCopyWithImpl<_$AttributesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttributesImplToJson(
      this,
    );
  }
}

abstract class _Attributes implements Attributes {
  factory _Attributes(
          {@JsonKey(name: 'spayed_neutered') final bool? spayedNeutered,
          @JsonKey(name: 'house_trained') final bool? houseTrained,
          final dynamic declawed,
          @JsonKey(name: 'special_needs') final bool? specialNeeds,
          @JsonKey(name: 'shots_current') final bool? shotsCurrent}) =
      _$AttributesImpl;

  factory _Attributes.fromJson(Map<String, dynamic> json) =
      _$AttributesImpl.fromJson;

  @override
  @JsonKey(name: 'spayed_neutered')
  bool? get spayedNeutered;
  @override
  @JsonKey(name: 'house_trained')
  bool? get houseTrained;
  @override
  dynamic get declawed;
  @override
  @JsonKey(name: 'special_needs')
  bool? get specialNeeds;
  @override
  @JsonKey(name: 'shots_current')
  bool? get shotsCurrent;

  /// Create a copy of Attributes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttributesImplCopyWith<_$AttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
