import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pet_heaven/features/pet/model/pet_list.dart';
import 'package:pet_heaven/features/pet/providers/pet_list_provider.dart';
import 'package:pet_heaven/features/pet/repositories/pet_repository.dart';

import '../../../test-utils/dummy-data/dummy_pets.dart';
import '../../../test-utils/mocks.dart';

void main() {
  final PetRepository mockPetRepository = MockPetRepository();

  setUp(() {
    when(
      () => mockPetRepository.getAnimalList(
        page: 1,
      ),
    ).thenAnswer((_) async => DummyPets.petList1);
  });

  test('fetches paginated Pets', () async {
    final petListener = Listener<AsyncValue<PetList>>();

    final providerContainer = ProviderContainer(
      overrides: [
        petRepositoryProvider.overrideWithValue(mockPetRepository),
      ],
    );

    addTearDown(providerContainer.dispose);

    providerContainer.listen<AsyncValue<PetList>>(
      getPetListProvider(page: 0),
      petListener,
      fireImmediately: true,
    );

    // Perform first reading, expects loading state
    final firstReading = providerContainer.read(getPetListProvider(page: 0));
    expect(firstReading, const AsyncValue<PetList>.loading());

    // Listener was fired from `null` to loading AsyncValue
    verify(
      () => petListener(
        null,
        const AsyncValue<PetList>.loading(),
      ),
    ).called(1);

    // Perform second reading, by waiting for the request, expects fetched data
    final secondReading =
        await providerContainer.read(getPetListProvider(page: 0).future);
    expect(secondReading, DummyPets.petList1);

    // Listener was fired from loading to fetched values
    verify(
      () => petListener(
        const AsyncValue<PetList>.loading(),
        AsyncValue<PetList>.data(
          DummyPets.petList1,
        ),
      ),
    ).called(1);

    // No more further listener events fired
    verifyNoMoreInteractions(petListener);
  });
}
