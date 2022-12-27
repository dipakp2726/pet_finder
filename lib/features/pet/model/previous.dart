import 'package:freezed_annotation/freezed_annotation.dart';

part 'previous.freezed.dart';
part 'previous.g.dart';

@freezed
class Previous with _$Previous {
  factory Previous({
    String? href,
  }) = _Previous;

  factory Previous.fromJson(Map<String, dynamic> json) =>
      _$PreviousFromJson(json);
}
