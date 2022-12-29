import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pet_heaven/features/pet/providers/pet_name_provider.dart';

import '../../../test-utils/mocks.dart';

void main() {
  test('defaults to blank and notify listeners when value changes', () {
    // An object that will allow us to read providers
    // Do not share this between tests.
    final container = ProviderContainer();
    addTearDown(container.dispose);
    final listener = Listener<String>();

    // Observe a provider and spy the changes.
    container.listen<String>(
      petNameProvider,
      listener,
      fireImmediately: true,
    );

    // the listener is called immediately with 0, the default value
    verify(() => listener(null, '')).called(1);
    verifyNoMoreInteractions(listener);

    // We increment the value
    container.read(petNameProvider.notifier).state = 'fluffy';

    // The listener was called again, but with 1 this time
    verify(() => listener('', 'fluffy')).called(1);
    verifyNoMoreInteractions(listener);
  });
}
