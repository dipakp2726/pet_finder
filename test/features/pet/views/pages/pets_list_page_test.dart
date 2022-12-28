import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pet_heaven/features/pet/providers/pet_count_provider.dart';
import 'package:pet_heaven/features/pet/views/pages/pets_list_page.dart';
import 'package:pet_heaven/features/pet/views/widgets/pet_list.dart';

import '../../../../test-utils/pump_app.dart';

void main() {
  testWidgets('renders pets list page ...', (tester) async {
    await tester.pumpProviderApp(
      const PetListPage(),
      overrides: [
        petCountProvider.overrideWithValue(
          const AsyncValue<int>.data(20),
        ),
      ],
    );

    await tester.pumpAndSettle();

    final appbar = find.byType(AppBar);
    final petList = find.byType(PetList);

    expect(appbar, findsOneWidget);
    expect(petList, findsOneWidget);
  });
}
