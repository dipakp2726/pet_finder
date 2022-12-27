import 'package:freezed_annotation/freezed_annotation.dart';

part 'colors.freezed.dart';
part 'colors.g.dart';

@freezed
class Colors with _$Colors {
  factory Colors({
    dynamic primary,
    dynamic secondary,
    dynamic tertiary,
  }) = _Colors;

  factory Colors.fromJson(Map<String, dynamic> json) => _$ColorsFromJson(json);
}
