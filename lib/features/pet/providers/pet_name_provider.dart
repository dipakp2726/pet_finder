import 'package:flutter_riverpod/flutter_riverpod.dart';



/// provider that manage search state
final petNameProvider = StateProvider<String>((ref) {
  return '';
});
