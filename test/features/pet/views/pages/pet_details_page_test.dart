import 'package:flutter_test/flutter_test.dart';
import 'package:pet_heaven/core/services/storage/storage_service_provider.dart';
import 'package:pet_heaven/features/pet/providers/pet_details_provider.dart';
import 'package:pet_heaven/features/pet/views/pages/pet_details_page.dart';

import '../../../../test-utils/dummy-data/dummy_pets.dart';
import '../../../../test-utils/mocks.dart';
import '../../../../test-utils/pump_app.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final mockStorageService = MockStorageService();

  testWidgets('renders pet details ', (tester) async {
    await tester.runAsync(() async {
      await tester.pumpProviderApp(
        PetDetailsPage(
          petId: DummyPets.petWithoutImage.id!,
          petName: DummyPets.petWithoutImage.name!,
          petAvatar: DummyPets.petWithoutImage.photos?.first.large,
        ),
        overrides: [
          storageServiceProvider.overrideWithValue(mockStorageService),
          petDetailsProvider(DummyPets.petWithoutImage.id!)
              .overrideWith((ref) => Future.value(DummyPets.petWithoutImage))
        ],
      );

      await tester.pumpAndSettle();

      expect(find.text(DummyPets.petWithoutImage.name!), findsOneWidget);
    });
  });
}
