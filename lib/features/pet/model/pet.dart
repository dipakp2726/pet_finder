import 'package:freezed_annotation/freezed_annotation.dart';

import 'attributes.dart';
import 'breeds.dart';
import 'colors.dart';
import 'contact.dart';
import 'environment.dart';
import 'links.dart';
import 'photo.dart';
import 'video.dart';

part 'pet.freezed.dart';

part 'pet.g.dart';

@freezed
class Pet with _$Pet {
  factory Pet({
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

  factory Pet.fromJson(Map<String, dynamic> json) => _$PetFromJson(json);
}

extension Price on String {
  /// generate price based on name chars
  String getPrice() {
    // Convert the name to a number by summing up the ASCII values of its characters
    final nameValue = codeUnits.reduce((value, unit) => value + unit);
    // Generate a number between 100 and 1000
    final number = nameValue.remainder(901) + 100;

    // Return the number
    return '\$ ${number.toDouble()}';
  }
}
