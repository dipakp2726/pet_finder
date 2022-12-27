import 'package:freezed_annotation/freezed_annotation.dart';

import 'organization.dart';
import 'self.dart';
import 'type.dart';

part 'links.freezed.dart';
part 'links.g.dart';

@freezed
class Links with _$Links {
  factory Links({
    Self? self,
    Type? type,
    Organization? organization,
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}
