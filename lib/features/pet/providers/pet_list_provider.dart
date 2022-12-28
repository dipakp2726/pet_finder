import 'package:pet_heaven/features/pet/model/pet_list.dart';
import 'package:pet_heaven/features/pet/repositories/pet_repository.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pet_list_provider.g.dart';

@riverpod
Future<PetList> getPetList(GetPetListRef ref, {required int page}) {
  final petRepository = ref.watch(petRepositoryProvider);

  return petRepository.getAnimalList(page: page+1);
}


