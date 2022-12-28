import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pet_heaven/core/services/storage/storage_service_provider.dart';
import 'package:pet_heaven/features/pet/providers/current_pet_provider.dart';
import 'package:pet_heaven/features/pet/views/widgets/pet_list_item.dart';

import '../../../../test-utils/dummy-data/dummy_pets.dart';
import '../../../../test-utils/mocks.dart';
import '../../../../test-utils/pump_app.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
    'renders person data',
    (WidgetTester tester) async {
      await tester.pumpProviderApp(
        const Material(
          child: PetListItem(),
        ),
        overrides: [
          storageServiceProvider.overrideWithValue(MockStorageService()),
          currentPetProvider.overrideWithValue(
            AsyncValue.data(DummyPets.petWithoutImage),
          ),
        ],
      );

      await tester.pumpAndSettle();
      expect(find.text(DummyPets.petWithoutImage.name!), findsOneWidget);
    },
  );
}
