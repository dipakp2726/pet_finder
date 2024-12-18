import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_heaven/features/pet/model/pet_list.dart';
import 'package:pet_heaven/features/pet/providers/pet_name_provider.dart';
import 'package:pet_heaven/features/pet/repositories/pet_repository.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pet_list_provider.g.dart';

/// provider that fetches paginated pet list
@riverpod
Future<PetList> getPetList(Ref ref, {required int page}) {
  final petRepository = ref.watch(petRepositoryProvider);
  final name = ref.watch(petNameProvider);

  return petRepository.getAnimalList(
    page: page + 1,
    name: name.isNotEmpty ? name : null,
  );
}
