import 'package:freezed_annotation/freezed_annotation.dart';

part 'next.freezed.dart';
part 'next.g.dart';

@freezed
class Next with _$Next {
  factory Next({
    String? href,
  }) = _Next;

  factory Next.fromJson(Map<String, dynamic> json) => _$NextFromJson(json);
}
