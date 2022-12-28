import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_heaven/features/pet/model/pet.dart';

/// The provider that provides the pet data for each list item
///
/// Initially it throws an UnimplementedError because we won't use it
/// before overriding it
///
final currentPetProvider = Provider<AsyncValue<Pet>>((ref) {
  throw UnimplementedError();
});
