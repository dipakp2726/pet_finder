import 'package:freezed_annotation/freezed_annotation.dart';

import 'attributes.dart';
import 'breeds.dart';
import 'colors.dart';
import 'contact.dart';
import 'environment.dart';
import 'links.dart';
import 'photo.dart';
import 'video.dart';

part 'animal.freezed.dart';
part 'animal.g.dart';

@freezed
class Animal with _$Animal {
  factory Animal({
    int? id,
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
    @JsonKey(name: '_links') Links? links,
  }) = _Animal;

  factory Animal.fromJson(Map<String, dynamic> json) => _$AnimalFromJson(json);
}
