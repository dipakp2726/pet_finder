import 'package:freezed_annotation/freezed_annotation.dart';

part 'attributes.freezed.dart';
part 'attributes.g.dart';

@freezed
class Attributes with _$Attributes {
  factory Attributes({
    @JsonKey(name: 'spayed_neutered') bool? spayedNeutered,
    @JsonKey(name: 'house_trained') bool? houseTrained,
    dynamic declawed,
    @JsonKey(name: 'special_needs') bool? specialNeeds,
    @JsonKey(name: 'shots_current') bool? shotsCurrent,
  }) = _Attributes;

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);
}
