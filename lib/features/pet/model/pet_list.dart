import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pet_heaven/features/pet/model/pagination.dart';
import 'package:pet_heaven/features/pet/model/pet.dart';

part 'pet_list.freezed.dart';
part 'pet_list.g.dart';

@freezed
class PetList with _$PetList {
  factory PetList({
    List<Pet>? animals,
    Pagination? pagination,
  }) = _Model;

  factory PetList.fromJson(Map<String, dynamic> json) =>
      _$PetListFromJson(json);
}
