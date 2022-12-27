import 'package:freezed_annotation/freezed_annotation.dart';

import 'animal.dart';
import 'pagination.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class PetList with _$Model {
  factory PetList({
    List<Animal>? animals,
    Pagination? pagination,
  }) = _Model;

  factory PetList.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);
}
