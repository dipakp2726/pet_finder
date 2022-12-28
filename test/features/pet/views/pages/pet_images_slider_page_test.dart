import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';
import 'package:pet_heaven/features/pet/views/pages/pet_images_slider_page.dart';

import '../../../../test-utils/dummy-data/dummy_pets.dart';
import '../../../../test-utils/pump_app.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('defaults to passed initial page', (WidgetTester tester) async {
    await tester.pumpProviderApp(
      PetImagesSliderPage(
        images: DummyPets.pet1.photos!,
        initialImageIndex: 1,
      ),
    );

    await tester.pump();

    // ignore: omit_local_variable_types
    final PetImagesSliderPageState petImagesSliderPageState =
        tester.state(find.byType(PetImagesSliderPage));

    expect(petImagesSliderPageState.pageController.initialPage, equals(1));
    expect(petImagesSliderPageState.pageController.page, equals(1));

    expect(
      find.byKey(const ValueKey('__pet_image_slider_1__')),
      findsOneWidget,
    );
  });

  testWidgets('can go to next slide', (WidgetTester tester) async {
    await mockNetworkImages(() async {
      await tester.pumpProviderApp(
        PetImagesSliderPage(
          images: DummyPets.pet1.photos!,
        ),
      );
    });

    await tester.pump();
    // ignore: omit_local_variable_types
    PetImagesSliderPageState petImagesSliderPageState =
        tester.state(find.byType(PetImagesSliderPage));

    expect(petImagesSliderPageState.pageController.page, equals(0));

    await tester.tap(
      find.byKey(
        const ValueKey('__slider_next_button__'),
      ),
    );

    await tester.pump(const Duration(milliseconds: 300));
    await tester.pump(const Duration(milliseconds: 300));

    petImagesSliderPageState = tester.state(find.byType(PetImagesSliderPage));
    expect(petImagesSliderPageState.pageController.page, equals(1));
  });

  testWidgets('defaults to passed initial page', (WidgetTester tester) async {
    await tester.pumpProviderApp(
      PetImagesSliderPage(
        images: DummyPets.pet1.photos!,
        initialImageIndex: 1,
      ),
    );

    await tester.pump();

    // ignore: omit_local_variable_types
    final PetImagesSliderPageState petImagesSliderPageState =
        tester.state(find.byType(PetImagesSliderPage));

    expect(petImagesSliderPageState.pageController.initialPage, equals(1));
    expect(petImagesSliderPageState.pageController.page, equals(1));

    expect(
      find.byKey(const ValueKey('__pet_image_slider_1__')),
      findsOneWidget,
    );
  });

  testWidgets('can go to previous slide', (WidgetTester tester) async {
    await mockNetworkImages(() async {
      await tester.pumpProviderApp(
        PetImagesSliderPage(
          images: DummyPets.pet1.photos!,
        ),
      );
    });

    await tester.pump();

    // ignore: omit_local_variable_types
    PetImagesSliderPageState petImagesSliderPageState =
        tester.state(find.byType(PetImagesSliderPage));

    expect(petImagesSliderPageState.pageController.page, equals(1));

    await tester.tap(
      find.byKey(
        const ValueKey('__slider_previous_button__'),
      ),
    );

    await tester.pump(const Duration(milliseconds: 300));
    await tester.pump(const Duration(milliseconds: 300));

    petImagesSliderPageState = tester.state(find.byType(PetImagesSliderPage));
    expect(petImagesSliderPageState.pageController.page, equals(0));
  });
}
