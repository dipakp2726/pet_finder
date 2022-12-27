import 'package:freezed_annotation/freezed_annotation.dart';

part 'self.freezed.dart';
part 'self.g.dart';

@freezed
class Self with _$Self {
  factory Self({
    String? href,
  }) = _Self;

  factory Self.fromJson(Map<String, dynamic> json) => _$SelfFromJson(json);
}
