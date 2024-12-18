// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnimalImpl _$$AnimalImplFromJson(Map<String, dynamic> json) => _$AnimalImpl(
      id: (json['id'] as num?)?.toInt(),
      organizationId: json['organization_id'] as String?,
      url: json['url'] as String?,
      type: json['type'] as String?,
      species: json['species'] as String?,
      breeds: json['breeds'] == null
          ? null
          : Breeds.fromJson(json['breeds'] as Map<String, dynamic>),
      colors: json['colors'] == null
          ? null
          : Colors.fromJson(json['colors'] as Map<String, dynamic>),
      age: json['age'] as String?,
      gender: json['gender'] as String?,
      size: json['size'] as String?,
      coat: json['coat'],
      attributes: json['attributes'] == null
          ? null
          : Attributes.fromJson(json['attributes'] as Map<String, dynamic>),
      environment: json['environment'] == null
          ? null
          : Environment.fromJson(json['environment'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      videos: (json['videos'] as List<dynamic>?)
          ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
      publishedAt: json['published_at'] as String?,
      contact: json['contact'] == null
          ? null
          : Contact.fromJson(json['contact'] as Map<String, dynamic>),
      links: json['_links'] == null
          ? null
          : Links.fromJson(json['_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AnimalImplToJson(_$AnimalImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'organization_id': instance.organizationId,
      'url': instance.url,
      'type': instance.type,
      'species': instance.species,
      'breeds': instance.breeds,
      'colors': instance.colors,
      'age': instance.age,
      'gender': instance.gender,
      'size': instance.size,
      'coat': instance.coat,
      'attributes': instance.attributes,
      'environment': instance.environment,
      'tags': instance.tags,
      'name': instance.name,
      'description': instance.description,
      'photos': instance.photos,
      'videos': instance.videos,
      'status': instance.status,
      'published_at': instance.publishedAt,
      'contact': instance.contact,
      '_links': instance.links,
    };
