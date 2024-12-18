import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_heaven/core/widgets/animated_scroll_view_item.dart';
import 'package:pet_heaven/core/widgets/error_view.dart';
import 'package:pet_heaven/core/widgets/grid_shimmer.dart';
import 'package:pet_heaven/features/pet/providers/current_pet_provider.dart';
import 'package:pet_heaven/features/pet/providers/pet_count_provider.dart';
import 'package:pet_heaven/features/pet/providers/pet_list_provider.dart';
import 'package:pet_heaven/features/pet/views/widgets/pet_list_item.dart';

/// Widget holding the list of pets
class PetList extends ConsumerWidget {
  /// Creates new instance of [PetList]
  const PetList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final popularPeopleCount = ref.watch(petCountProvider);

    return popularPeopleCount.when(
      loading: () => const GridShimmer(),
      data: (int count) {
        return RefreshIndicator(
          onRefresh: () {
            ref.invalidate(getPetListProvider);

            return ref.refresh(getPetListProvider(page: 0).future);
          },
          child: GridView.builder(
            itemCount: count,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: .8,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              final currentPet = ref
                  .watch(getPetListProvider(page: index ~/ 20))
                  .whenData((pageData) => pageData.animals![index % 20]);

              return ProviderScope(
                overrides: [
                  currentPetProvider.overrideWithValue(currentPet),
                ],
                child: const AnimatedScrollViewItem(
                  child: PetListItem(),
                ),
              );
            },
          ),
        );
      },
      error: (Object error, StackTrace? stackTrace) {
        log('Error fetching pets list');
        log(error.toString());
        log(stackTrace.toString());
        return const ErrorView();
      },
    );
  }
}
