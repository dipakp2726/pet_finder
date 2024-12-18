// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breeds.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BreedsImpl _$$BreedsImplFromJson(Map<String, dynamic> json) => _$BreedsImpl(
      primary: json['primary'] as String?,
      secondary: json['secondary'],
      mixed: json['mixed'] as bool?,
      unknown: json['unknown'] as bool?,
    );

Map<String, dynamic> _$$BreedsImplToJson(_$BreedsImpl instance) =>
    <String, dynamic>{
      'primary': instance.primary,
      'secondary': instance.secondary,
      'mixed': instance.mixed,
      'unknown': instance.unknown,
    };
