import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pet_heaven/features/pet/providers/current_pet_provider.dart';

void main() {
  test('current pet provider throws UnimplementedError initially',
      () {
    final providerContainer = ProviderContainer();

    addTearDown(providerContainer.dispose);

    expect(
      () => providerContainer.read(currentPetProvider),
      throwsA(isA<UnimplementedError>()),
    );
  });
}
