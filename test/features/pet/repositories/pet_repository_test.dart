import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pet_heaven/features/pet/repositories/http_pet_repository.dart';
import 'package:pet_heaven/features/pet/repositories/pet_repository.dart';

void main() {
  test('petRepositoryProvider is a HttpPetRepository', () {
    final providerContainer = ProviderContainer();

    addTearDown(providerContainer.dispose);

    expect(
      providerContainer.read(petRepositoryProvider),
      isA<HttpPetRepository>(),
    );
  });
}
