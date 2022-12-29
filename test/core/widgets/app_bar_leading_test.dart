import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pet_heaven/core/widgets/app_bar_leading.dart';

import '../../test-utils/mocks.dart';
import '../../test-utils/pump_app.dart';

void main() {
  setUpAll(() {
    registerFallbackValue(MockRoute());
  });

  testWidgets('can pop', (WidgetTester tester) async {
    final mockNavigatorObserver = MockNavigatorObserver();

    await tester.pumpApp(
      const AppBarLeading(),
      navigatorObserver: mockNavigatorObserver,
    );

    await tester.pumpAndSettle();

    await tester.tap(find.byType(InkWell));
    verify(() => mockNavigatorObserver.didPop(any(), any()));
  });

  // TODO: add golden
/*  testWidgets('matches expected widget', (WidgetTester tester) async {
    await GoldenTestUtils.loadMaterialIconsFont();
    await tester.pumpApp(
      const AppBarLeading(),
    );

    await tester.pumpAndSettle();

    await expectLater(
      find.byType(AppBarLeading),
      matchesGoldenFile('goldens/app_bar_leading.png'),
    );
  });*/
}
