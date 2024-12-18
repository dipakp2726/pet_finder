import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pet_heaven/features/pet/providers/pet_list_provider.dart';

import '../../../test-utils/dummy-data/dummy_pets.dart';

void main() {
  test('returns correct results count', () async {
    final providerContainer = ProviderContainer(
      overrides: [
        getPetListProvider(page: 0).overrideWith((ref) => DummyPets.petList1),
      ],
    );

    addTearDown(providerContainer.dispose);

    providerContainer.read(getPetListProvider(page: 0));
    await Future<void>.delayed(Duration.zero);

    final count = providerContainer
        .read(getPetListProvider(page: 0))
        .value!
        .pagination!
        .totalCount;

    expect(
      count,
      equals(DummyPets.petList1.pagination!.totalCount),
    );
  });
}
