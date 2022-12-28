import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pet_heaven/core/services/storage/storage_service.dart';
import 'package:pet_heaven/core/services/storage/storage_service_provider.dart';
import 'package:pet_heaven/features/pet/providers/adoption_provider.dart';

import '../../../test-utils/mocks.dart';

void main() {
  final StorageService mockStorageService = MockStorageService();

  final adoptKey = AdoptMe().adoptKey;

  test('get Adopted pet list', () {
    final petListListener = Listener<List<int>>();

    final providerContainer = ProviderContainer(
      overrides: [
        storageServiceProvider.overrideWithValue(mockStorageService),
      ],
    );

    addTearDown(providerContainer.dispose);

    providerContainer.listen<List<int>>(
      adoptMeProvider,
      petListListener,
      fireImmediately: true,
    );

    when(() => mockStorageService.get(adoptKey)).thenReturn(null);

    // Perform first reading, expects loading state
    final firstReading = providerContainer.read(adoptMeProvider);
    expect(firstReading, <int>[]);

    // Listener was fired from `null` to empty list
    verify(
      () => petListListener(
        null,
        <int>[],
      ),
    ).called(1);

    // No more further listener events fired
    verifyNoMoreInteractions(petListListener);
  });
}
