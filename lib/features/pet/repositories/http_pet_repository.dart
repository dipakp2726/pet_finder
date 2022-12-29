import 'package:pet_heaven/core/services/http/http_service.dart';
import 'package:pet_heaven/features/pet/model/pet.dart';
import 'package:pet_heaven/features/pet/model/pet_list.dart';
import 'package:pet_heaven/features/pet/repositories/pet_repository.dart';

/// Http implementation of the [PetRepository]
class HttpPetRepository implements PetRepository {
  /// Creates a new instance of [HttpPetRepository]
  HttpPetRepository(this.httpService);

  /// Http service used to access an Http client and make calls
  final HttpService httpService;

  @override
  String get path => '/animals';


  @override
  Future<PetList> getAnimalList({
    int page = 1,
    String? name,
    bool forceRefresh = false,
  }) async {
    final queryParameters = <String, dynamic>{};
    if (name != null) {
      queryParameters['name'] = name;
    }
    queryParameters['page'] = page;

    final responseData = await httpService.get(
      path,
      forceRefresh: forceRefresh,
      queryParameters: queryParameters,
    );

    return PetList.fromJson(responseData);
  }

  @override
  Future<Pet> getAnimalDetails(
    int animalId, {
    bool forceRefresh = false,
  }) async {
    final responseData = await httpService.get(
      '$path/$animalId',
      forceRefresh: forceRefresh,
    );

    return Pet.fromJson(responseData['animal'] as Map<String, dynamic>);
  }
}
