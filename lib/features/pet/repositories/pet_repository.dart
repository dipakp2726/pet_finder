import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_heaven/core/services/http/http_service_provider.dart';
import 'package:pet_heaven/features/pet/model/pet.dart';
import 'package:pet_heaven/features/pet/model/pet_list.dart';
import 'package:pet_heaven/features/pet/repositories/http_pet_repository.dart';

/// Provider to map [HttpPetRepository] implementation to
/// [PetRepository] interface
final petRepositoryProvider = Provider<PetRepository>(
  (ref) {
    final httpService = ref.watch(httpServiceProvider);

    return HttpPetRepository(httpService);
  },
);

/// Pet repository interface
abstract class PetRepository {
  /// petfinder Base endpoint path for people requests
  ///
  /// See: https://api.petfinder.com/v2/animals
  String get path;

  /// Request to get a pet details endpoint
  Future<Pet> getAnimalDetails(
    int animalId, {
    bool forceRefresh = false,
  });

  /// Request to get a list of pets endpoint
  Future<PetList> getAnimalList({
    int page = 1,
    String? name,
    bool forceRefresh = false,
  });
}
