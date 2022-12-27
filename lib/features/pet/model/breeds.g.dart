// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breeds.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Breeds _$$_BreedsFromJson(Map<String, dynamic> json) => _$_Breeds(
      primary: json['primary'] as String?,
      secondary: json['secondary'],
      mixed: json['mixed'] as bool?,
      unknown: json['unknown'] as bool?,
    );

Map<String, dynamic> _$$_BreedsToJson(_$_Breeds instance) => <String, dynamic>{
      'primary': instance.primary,
      'secondary': instance.secondary,
      'mixed': instance.mixed,
      'unknown': instance.unknown,
    };
