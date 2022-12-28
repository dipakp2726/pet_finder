import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_heaven/features/pet/model/pet.dart';
import 'package:pet_heaven/features/pet/repositories/pet_repository.dart';

/// Future provider that fetches a Pet's details
/// from the pet's id
///
final petDetailsProvider = FutureProvider.family<Pet, int>(
  (ref, animalId) async {
    final petRepository = ref.watch(petRepositoryProvider);

    return petRepository.getAnimalDetails(
      animalId,
    );
  },
);
