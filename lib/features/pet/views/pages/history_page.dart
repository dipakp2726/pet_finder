import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_heaven/core/widgets/animated_scroll_view_item.dart';
import 'package:pet_heaven/features/pet/providers/adoption_provider.dart';
import 'package:pet_heaven/features/pet/providers/current_pet_provider.dart';
import 'package:pet_heaven/features/pet/providers/pet_details_provider.dart';
import 'package:pet_heaven/features/pet/views/widgets/histoy_list_item.dart';

/// Page widget of the Adopted Pet list
///
class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
      ),
      body: const SafeArea(child: HistoryList()),
    );
  }
}

/// Widget holding the adopted pet list
///
/// currently shows only five records due to api rate limit on petfinder
class HistoryList extends ConsumerWidget {
  const HistoryList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final adoptedIds = ref.watch(adoptMeProvider);

    if (adoptedIds.isNotEmpty) {
      final reversedList = adoptedIds.reversed.toList();
      return RefreshIndicator(
        onRefresh: () {
          ref.invalidate(adoptMeProvider);

          return Future.value();
        },
        child: ListView.builder(
          itemCount: min(5, adoptedIds.length),
          itemBuilder: (context, index) {
            final currentPet =
                ref.watch(petDetailsProvider(reversedList[index]));

            return ProviderScope(
              overrides: [
                currentPetProvider.overrideWithValue(currentPet),
              ],
              child: const AnimatedScrollViewItem(
                child: HistoryListItem(),
              ),
            );
          },
        ),
      );
    } else {
      return const Center(
        child: Text('No pet Adopted yet'),
      );
    }
  }
}
