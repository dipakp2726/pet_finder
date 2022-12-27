import 'package:freezed_annotation/freezed_annotation.dart';

import 'links.dart';

part 'pagination.freezed.dart';
part 'pagination.g.dart';

@freezed
class Pagination with _$Pagination {
  factory Pagination({
    @JsonKey(name: 'count_per_page') int? countPerPage,
    @JsonKey(name: 'total_count') int? totalCount,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: '_links') Links? links,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}
