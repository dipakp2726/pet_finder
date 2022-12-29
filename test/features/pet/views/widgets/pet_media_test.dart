import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pet_heaven/core/widgets/app_cached_network_image.dart';
import 'package:pet_heaven/features/pet/views/widgets/pet_media.dart';

import '../../../../test-utils/dummy-data/dummy_pets.dart';
import '../../../../test-utils/pump_app.dart';

void main() {
  testWidgets('renders list of pet image list', (WidgetTester tester) async {
    await tester.pumpApp(
      Material(child: PetImagesList(DummyPets.pet1.photos!)),
    );

    await tester.pump();
    expect(
      find.byType(AppCachedNetworkImage),
      findsNWidgets(DummyPets.pet1.photos!.length),
    );
  });

  testWidgets(
    'renders list of pet images without images when not available',
    (WidgetTester tester) async {
      await tester
          .pumpApp(Material(child: PetImagesList(DummyPets.pet1.copyWith(photos: []).photos!)));

      await tester.pump();
      expect(
        find.byType(AppCachedNetworkImage),
        findsNothing,
      );
    },
  );
}
