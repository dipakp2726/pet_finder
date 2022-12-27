// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pet _$AnimalFromJson(Map<String, dynamic> json) {
  return _Animal.fromJson(json);
}

/// @nodoc
mixin _$Animal {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'organization_id')
  String? get organizationId => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get species => throw _privateConstructorUsedError;
  Breeds? get breeds => throw _privateConstructorUsedError;
  Colors? get colors => throw _privateConstructorUsedError;
  String? get age => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get size => throw _privateConstructorUsedError;
  dynamic get coat => throw _privateConstructorUsedError;
  Attributes? get attributes => throw _privateConstructorUsedError;
  Environment? get environment => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<Photo>? get photos => throw _privateConstructorUsedError;
  List<Video>? get videos => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'published_at')
  String? get publishedAt => throw _privateConstructorUsedError;
  Contact? get contact => throw _privateConstructorUsedError;
  @JsonKey(name: '_links')
  Links? get links => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimalCopyWith<Pet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimalCopyWith<$Res> {
  factory $AnimalCopyWith(Pet value, $Res Function(Pet) then) =
      _$AnimalCopyWithImpl<$Res, Pet>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'organization_id') String? organizationId,
      String? url,
      String? type,
      String? species,
      Breeds? breeds,
      Colors? colors,
      String? age,
      String? gender,
      String? size,
      dynamic coat,
      Attributes? attributes,
      Environment? environment,
      List<String>? tags,
      String? name,
      String? description,
      List<Photo>? photos,
      List<Video>? videos,
      String? status,
      @JsonKey(name: 'published_at') String? publishedAt,
      Contact? contact,
      @JsonKey(name: '_links') Links? links});

  $BreedsCopyWith<$Res>? get breeds;
  $ColorsCopyWith<$Res>? get colors;
  $AttributesCopyWith<$Res>? get attributes;
  $EnvironmentCopyWith<$Res>? get environment;
  $ContactCopyWith<$Res>? get contact;
  $LinksCopyWith<$Res>? get links;
}

/// @nodoc
class _$AnimalCopyWithImpl<$Res, $Val extends Pet>
    implements $AnimalCopyWith<$Res> {
  _$AnimalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? organizationId = freezed,
    Object? url = freezed,
    Object? type = freezed,
    Object? species = freezed,
    Object? breeds = freezed,
    Object? colors = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? size = freezed,
    Object? coat = freezed,
    Object? attributes = freezed,
    Object? environment = freezed,
    Object? tags = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? photos = freezed,
    Object? videos = freezed,
    Object? status = freezed,
    Object? publishedAt = freezed,
    Object? contact = freezed,
    Object? links = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      breeds: freezed == breeds
          ? _value.breeds
          : breeds // ignore: cast_nullable_to_non_nullable
              as Breeds?,
      colors: freezed == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as Colors?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      coat: freezed == coat
          ? _value.coat
          : coat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Attributes?,
      environment: freezed == environment
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as Environment?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BreedsCopyWith<$Res>? get breeds {
    if (_value.breeds == null) {
      return null;
    }

    return $BreedsCopyWith<$Res>(_value.breeds!, (value) {
      return _then(_value.copyWith(breeds: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ColorsCopyWith<$Res>? get colors {
    if (_value.colors == null) {
      return null;
    }

    return $ColorsCopyWith<$Res>(_value.colors!, (value) {
      return _then(_value.copyWith(colors: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AttributesCopyWith<$Res>? get attributes {
    if (_value.attributes == null) {
      return null;
    }

    return $AttributesCopyWith<$Res>(_value.attributes!, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EnvironmentCopyWith<$Res>? get environment {
    if (_value.environment == null) {
      return null;
    }

    return $EnvironmentCopyWith<$Res>(_value.environment!, (value) {
      return _then(_value.copyWith(environment: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res>? get contact {
    if (_value.contact == null) {
      return null;
    }

    return $ContactCopyWith<$Res>(_value.contact!, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $LinksCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AnimalCopyWith<$Res> implements $AnimalCopyWith<$Res> {
  factory _$$_AnimalCopyWith(_$_Animal value, $Res Function(_$_Animal) then) =
      __$$_AnimalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'organization_id') String? organizationId,
      String? url,
      String? type,
      String? species,
      Breeds? breeds,
      Colors? colors,
      String? age,
      String? gender,
      String? size,
      dynamic coat,
      Attributes? attributes,
      Environment? environment,
      List<String>? tags,
      String? name,
      String? description,
      List<Photo>? photos,
      List<Video>? videos,
      String? status,
      @JsonKey(name: 'published_at') String? publishedAt,
      Contact? contact,
      @JsonKey(name: '_links') Links? links});

  @override
  $BreedsCopyWith<$Res>? get breeds;
  @override
  $ColorsCopyWith<$Res>? get colors;
  @override
  $AttributesCopyWith<$Res>? get attributes;
  @override
  $EnvironmentCopyWith<$Res>? get environment;
  @override
  $ContactCopyWith<$Res>? get contact;
  @override
  $LinksCopyWith<$Res>? get links;
}

/// @nodoc
class __$$_AnimalCopyWithImpl<$Res>
    extends _$AnimalCopyWithImpl<$Res, _$_Animal>
    implements _$$_AnimalCopyWith<$Res> {
  __$$_AnimalCopyWithImpl(_$_Animal _value, $Res Function(_$_Animal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? organizationId = freezed,
    Object? url = freezed,
    Object? type = freezed,
    Object? species = freezed,
    Object? breeds = freezed,
    Object? colors = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? size = freezed,
    Object? coat = freezed,
    Object? attributes = freezed,
    Object? environment = freezed,
    Object? tags = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? photos = freezed,
    Object? videos = freezed,
    Object? status = freezed,
    Object? publishedAt = freezed,
    Object? contact = freezed,
    Object? links = freezed,
  }) {
    return _then(_$_Animal(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      breeds: freezed == breeds
          ? _value.breeds
          : breeds // ignore: cast_nullable_to_non_nullable
              as Breeds?,
      colors: freezed == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as Colors?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      coat: freezed == coat
          ? _value.coat
          : coat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Attributes?,
      environment: freezed == environment
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as Environment?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      videos: freezed == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Animal implements _Animal {
  _$_Animal(
      {this.id,
      @JsonKey(name: 'organization_id') this.organizationId,
      this.url,
      this.type,
      this.species,
      this.breeds,
      this.colors,
      this.age,
      this.gender,
      this.size,
      this.coat,
      this.attributes,
      this.environment,
      final List<String>? tags,
      this.name,
      this.description,
      final List<Photo>? photos,
      final List<Video>? videos,
      this.status,
      @JsonKey(name: 'published_at') this.publishedAt,
      this.contact,
      @JsonKey(name: '_links') this.links})
      : _tags = tags,
        _photos = photos,
        _videos = videos;

  factory _$_Animal.fromJson(Map<String, dynamic> json) =>
      _$$_AnimalFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'organization_id')
  final String? organizationId;
  @override
  final String? url;
  @override
  final String? type;
  @override
  final String? species;
  @override
  final Breeds? breeds;
  @override
  final Colors? colors;
  @override
  final String? age;
  @override
  final String? gender;
  @override
  final String? size;
  @override
  final dynamic coat;
  @override
  final Attributes? attributes;
  @override
  final Environment? environment;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? name;
  @override
  final String? description;
  final List<Photo>? _photos;
  @override
  List<Photo>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Video>? _videos;
  @override
  List<Video>? get videos {
    final value = _videos;
    if (value == null) return null;
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? status;
  @override
  @JsonKey(name: 'published_at')
  final String? publishedAt;
  @override
  final Contact? contact;
  @override
  @JsonKey(name: '_links')
  final Links? links;

  @override
  String toString() {
    return 'Animal(id: $id, organizationId: $organizationId, url: $url, type: $type, species: $species, breeds: $breeds, colors: $colors, age: $age, gender: $gender, size: $size, coat: $coat, attributes: $attributes, environment: $environment, tags: $tags, name: $name, description: $description, photos: $photos, videos: $videos, status: $status, publishedAt: $publishedAt, contact: $contact, links: $links)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Animal &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.breeds, breeds) || other.breeds == breeds) &&
            (identical(other.colors, colors) || other.colors == colors) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality().equals(other.coat, coat) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes) &&
            (identical(other.environment, environment) ||
                other.environment == environment) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.links, links) || other.links == links));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        organizationId,
        url,
        type,
        species,
        breeds,
        colors,
        age,
        gender,
        size,
        const DeepCollectionEquality().hash(coat),
        attributes,
        environment,
        const DeepCollectionEquality().hash(_tags),
        name,
        description,
        const DeepCollectionEquality().hash(_photos),
        const DeepCollectionEquality().hash(_videos),
        status,
        publishedAt,
        contact,
        links
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimalCopyWith<_$_Animal> get copyWith =>
      __$$_AnimalCopyWithImpl<_$_Animal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnimalToJson(
      this,
    );
  }
}

abstract class _Animal implements Pet {
  factory _Animal(
      {final int? id,
      @JsonKey(name: 'organization_id') final String? organizationId,
      final String? url,
      final String? type,
      final String? species,
      final Breeds? breeds,
      final Colors? colors,
      final String? age,
      final String? gender,
      final String? size,
      final dynamic coat,
      final Attributes? attributes,
      final Environment? environment,
      final List<String>? tags,
      final String? name,
      final String? description,
      final List<Photo>? photos,
      final List<Video>? videos,
      final String? status,
      @JsonKey(name: 'published_at') final String? publishedAt,
      final Contact? contact,
      @JsonKey(name: '_links') final Links? links}) = _$_Animal;

  factory _Animal.fromJson(Map<String, dynamic> json) = _$_Animal.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'organization_id')
  String? get organizationId;
  @override
  String? get url;
  @override
  String? get type;
  @override
  String? get species;
  @override
  Breeds? get breeds;
  @override
  Colors? get colors;
  @override
  String? get age;
  @override
  String? get gender;
  @override
  String? get size;
  @override
  dynamic get coat;
  @override
  Attributes? get attributes;
  @override
  Environment? get environment;
  @override
  List<String>? get tags;
  @override
  String? get name;
  @override
  String? get description;
  @override
  List<Photo>? get photos;
  @override
  List<Video>? get videos;
  @override
  String? get status;
  @override
  @JsonKey(name: 'published_at')
  String? get publishedAt;
  @override
  Contact? get contact;
  @override
  @JsonKey(name: '_links')
  Links? get links;
  @override
  @JsonKey(ignore: true)
  _$$_AnimalCopyWith<_$_Animal> get copyWith =>
      throw _privateConstructorUsedError;
}
