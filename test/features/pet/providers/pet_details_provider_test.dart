import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pet_heaven/features/pet/model/pet.dart';
import 'package:pet_heaven/features/pet/providers/pet_details_provider.dart';
import 'package:pet_heaven/features/pet/repositories/pet_repository.dart';

import '../../../test-utils/dummy-data/dummy_pets.dart';
import '../../../test-utils/mocks.dart';

void main() {
  final PetRepository mockPetRepository = MockPetRepository();

  setUp(() {
    when(
      () => mockPetRepository.getAnimalDetails(any()),
    ).thenAnswer((_) async => DummyPets.pet1);
  });

  test('fetches pet details', () async {
    final petListener = Listener<AsyncValue<Pet>>();

    final providerContainer = ProviderContainer(
      overrides: [
        petRepositoryProvider.overrideWithValue(mockPetRepository),
      ],
    );

    addTearDown(providerContainer.dispose);

    providerContainer.listen<AsyncValue<Pet>>(
      petDetailsProvider(DummyPets.pet1.id!),
      petListener,
      fireImmediately: true,
    );

    // Perform first reading, expects loading state
    final firstReading =
        providerContainer.read(petDetailsProvider(DummyPets.pet1.id!));
    expect(firstReading, const AsyncValue<Pet>.loading());

    // Listener was fired from `null` to loading AsyncValue
    verify(
      () => petListener(
        null,
        const AsyncValue<Pet>.loading(),
      ),
    ).called(1);

    // Perform second reading, by waiting for the request, expects fetched data
    final secondReading = await providerContainer
        .read(petDetailsProvider(DummyPets.pet1.id!).future);
    expect(secondReading, DummyPets.pet1);

    // Listener was fired from loading to fetched values
    verify(
      () => petListener(
        const AsyncValue<Pet>.loading(),
        AsyncValue<Pet>.data(DummyPets.pet1),
      ),
    ).called(1);

    // No more further listener events fired
    verifyNoMoreInteractions(petListener);
  });
}
