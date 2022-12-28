import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pet_heaven/core/services/http/http_service.dart';
import 'package:pet_heaven/features/pet/repositories/http_pet_repository.dart';

import '../../../test-utils/dummy-data/dummy_pets.dart';
import '../../../test-utils/mocks.dart';

void main() {
  final HttpService mockHttpService = MockHttpService();

  final httpPetRepository = HttpPetRepository(
    mockHttpService,
  );

  test('fetches paginated pet list', () async {
    const page = 1;

    when(
      () => mockHttpService.get(
        httpPetRepository.path,
        queryParameters: <String, dynamic>{
          'page': page,
        },
      ),
    ).thenAnswer(
      (_) async => DummyPets.petListResp,
    );

    final petList = await httpPetRepository.getAnimalList(
      page: 1,
    );

    expect(
      petList,
      equals(DummyPets.petList1),
    );
  });

  test('fetches  pet details', () async {
    when(
      () => mockHttpService.get(
        '${httpPetRepository.path}/${DummyPets.pet1.id}',
      ),
    ).thenAnswer(
      (_) async => DummyPets.petResp,
    );

    final pet = await httpPetRepository.getAnimalDetails(DummyPets.pet1.id!);

    expect(
      pet,
      equals(DummyPets.pet1),
    );
  });
}
