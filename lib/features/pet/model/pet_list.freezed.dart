// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pet_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PetList _$PetListFromJson(Map<String, dynamic> json) {
  return _Model.fromJson(json);
}

/// @nodoc
mixin _$PetList {
  List<Pet>? get animals => throw _privateConstructorUsedError;
  Pagination? get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetListCopyWith<PetList> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetListCopyWith<$Res> {
  factory $PetListCopyWith(PetList value, $Res Function(PetList) then) =
      _$PetListCopyWithImpl<$Res, PetList>;
  @useResult
  $Res call({List<Pet>? animals, Pagination? pagination});

  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$PetListCopyWithImpl<$Res, $Val extends PetList>
    implements $PetListCopyWith<$Res> {
  _$PetListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animals = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      animals: freezed == animals
          ? _value.animals
          : animals // ignore: cast_nullable_to_non_nullable
              as List<Pet>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ModelCopyWith<$Res> implements $PetListCopyWith<$Res> {
  factory _$$_ModelCopyWith(_$_Model value, $Res Function(_$_Model) then) =
      __$$_ModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Pet>? animals, Pagination? pagination});

  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$_ModelCopyWithImpl<$Res> extends _$PetListCopyWithImpl<$Res, _$_Model>
    implements _$$_ModelCopyWith<$Res> {
  __$$_ModelCopyWithImpl(_$_Model _value, $Res Function(_$_Model) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animals = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$_Model(
      animals: freezed == animals
          ? _value._animals
          : animals // ignore: cast_nullable_to_non_nullable
              as List<Pet>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Model implements _Model {
  _$_Model({final List<Pet>? animals, this.pagination}) : _animals = animals;

  factory _$_Model.fromJson(Map<String, dynamic> json) =>
      _$$_ModelFromJson(json);

  final List<Pet>? _animals;
  @override
  List<Pet>? get animals {
    final value = _animals;
    if (value == null) return null;
    if (_animals is EqualUnmodifiableListView) return _animals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Pagination? pagination;

  @override
  String toString() {
    return 'PetList(animals: $animals, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Model &&
            const DeepCollectionEquality().equals(other._animals, _animals) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_animals), pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModelCopyWith<_$_Model> get copyWith =>
      __$$_ModelCopyWithImpl<_$_Model>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelToJson(
      this,
    );
  }
}

abstract class _Model implements PetList {
  factory _Model({final List<Pet>? animals, final Pagination? pagination}) =
      _$_Model;

  factory _Model.fromJson(Map<String, dynamic> json) = _$_Model.fromJson;

  @override
  List<Pet>? get animals;
  @override
  Pagination? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_ModelCopyWith<_$_Model> get copyWith =>
      throw _privateConstructorUsedError;
}
