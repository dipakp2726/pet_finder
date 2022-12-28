import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pet_heaven/core/widgets/app_cached_network_image.dart';
import 'package:pet_heaven/features/pet/views/widgets/pet_cover.dart';

import '../../../../test-utils/pump_app.dart';

void main() {
  testWidgets(
    'renders asset image for null cover url',
    (WidgetTester tester) async {
      await tester.pumpApp(
        const PetCover(null),
      );

      await tester.pumpAndSettle();

      expect(
        find.byType(Image),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'renders network image for a cover url',
    (WidgetTester tester) async {
      await tester.pumpApp(
        const PetCover('avatar_url'),
      );

      await tester.pump();

      expect(
        find.byType(AppCachedNetworkImage),
        findsOneWidget,
      );
    },
  );
}
