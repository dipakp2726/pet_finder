import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:pet_heaven/features/pet/model/attributes.dart';
import 'package:pet_heaven/features/pet/model/breeds.dart';
import 'package:pet_heaven/features/pet/model/colors.dart';
import 'package:pet_heaven/features/pet/model/contact.dart';
import 'package:pet_heaven/features/pet/model/environment.dart';
import 'package:pet_heaven/features/pet/model/links.dart';
import 'package:pet_heaven/features/pet/model/photo.dart';
import 'package:pet_heaven/features/pet/model/video.dart';

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
    // Convert the name to a number by summing up the ASCII
    // values of its characters
    final nameValue = codeUnits.reduce((value, unit) => value + unit);
    // Generate a number between 100 and 1000
    final number = nameValue.remainder(901) + 100;

    // Return the number
    return '\$ ${number.toDouble()}';
  }
}
