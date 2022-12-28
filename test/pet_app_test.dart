import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pet_heaven/features/pet/views/pages/pets_list_page.dart';
import 'package:pet_heaven/pet_app.dart';

void main() {
  testWidgets(
    'renders PetListPage widget ',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        const ProviderScope(child: PetsApp()),
      );

      await tester.pumpAndSettle();

      expect(find.byType(PetListPage), findsOneWidget);
    },
  );
}
