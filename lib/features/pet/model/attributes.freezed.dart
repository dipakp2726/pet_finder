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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
abstract class _$$_AttributesCopyWith<$Res>
    implements $AttributesCopyWith<$Res> {
  factory _$$_AttributesCopyWith(
          _$_Attributes value, $Res Function(_$_Attributes) then) =
      __$$_AttributesCopyWithImpl<$Res>;
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
class __$$_AttributesCopyWithImpl<$Res>
    extends _$AttributesCopyWithImpl<$Res, _$_Attributes>
    implements _$$_AttributesCopyWith<$Res> {
  __$$_AttributesCopyWithImpl(
      _$_Attributes _value, $Res Function(_$_Attributes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spayedNeutered = freezed,
    Object? houseTrained = freezed,
    Object? declawed = freezed,
    Object? specialNeeds = freezed,
    Object? shotsCurrent = freezed,
  }) {
    return _then(_$_Attributes(
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
class _$_Attributes implements _Attributes {
  _$_Attributes(
      {@JsonKey(name: 'spayed_neutered') this.spayedNeutered,
      @JsonKey(name: 'house_trained') this.houseTrained,
      this.declawed,
      @JsonKey(name: 'special_needs') this.specialNeeds,
      @JsonKey(name: 'shots_current') this.shotsCurrent});

  factory _$_Attributes.fromJson(Map<String, dynamic> json) =>
      _$$_AttributesFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Attributes &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      spayedNeutered,
      houseTrained,
      const DeepCollectionEquality().hash(declawed),
      specialNeeds,
      shotsCurrent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttributesCopyWith<_$_Attributes> get copyWith =>
      __$$_AttributesCopyWithImpl<_$_Attributes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttributesToJson(
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
      _$_Attributes;

  factory _Attributes.fromJson(Map<String, dynamic> json) =
      _$_Attributes.fromJson;

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
  @override
  @JsonKey(ignore: true)
  _$$_AttributesCopyWith<_$_Attributes> get copyWith =>
      throw _privateConstructorUsedError;
}
