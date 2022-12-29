import 'package:flutter_test/flutter_test.dart';
import 'package:pet_heaven/core/services/storage/storage_service_provider.dart';
import 'package:pet_heaven/features/pet/views/pages/home_page.dart';
import 'package:pet_heaven/pet_app.dart';

import 'test-utils/mocks.dart';
import 'test-utils/pump_app.dart';

void main() {
  testWidgets(
    'renders Homepage widget ',
    (WidgetTester tester) async {
      await tester.pumpProviderApp(
        const PetsApp(),
        overrides: [
          storageServiceProvider.overrideWithValue(MockStorageService()),
        ],
      );

      await tester.pumpAndSettle();

      expect(find.byType(HomePage), findsOneWidget);
    },
  );
}
