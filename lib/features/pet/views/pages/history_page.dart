import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_heaven/core/widgets/animated_scroll_view_item.dart';
import 'package:pet_heaven/core/widgets/list_item_shimmer.dart';
import 'package:pet_heaven/features/pet/providers/adoption_provider.dart';
import 'package:pet_heaven/features/pet/providers/current_pet_provider.dart';
import 'package:pet_heaven/features/pet/providers/pet_details_provider.dart';
import 'package:pet_heaven/features/pet/views/pages/pet_details_page.dart';
import 'package:pet_heaven/features/pet/views/widgets/pet_avatar.dart';

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

    print('rebuild');

    if (adoptedIds.isNotEmpty) {
      final reversedList = adoptedIds.reversed.toList();
      return RefreshIndicator(
        onRefresh: (){
          ref.invalidate(adoptMeProvider);

          return Future.value();
        },
        child: ListView.builder(
          itemCount: min(5, adoptedIds.length),
          itemBuilder: (context, index) {
            final currentPet = ref.watch(petDetailsProvider(reversedList[index]));

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

/// Widget holding a list item in the adopted Pet list
class HistoryListItem extends ConsumerWidget {
  const HistoryListItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final petAsync = ref.watch(currentPetProvider);
    return petAsync.when(
      data: (pet) {
        return InkWell(
          onTap: () {
            Navigator.of(context).push<PetDetailsPage>(
              MaterialPageRoute<PetDetailsPage>(
                builder: (context) => PetDetailsPage(
                  petId: pet.id!,
                  petAvatar:
                      pet.photos!.isNotEmpty ? pet.photos!.first.large : null,
                  petName: pet.name!,
                ),
              ),
            );
          },
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 17,
              vertical: 10,
            ),
            child: Row(
              children: [
                // Avatar
                Expanded(
                  flex: 1,
                  child: PetAvatar(
                    pet.photos == null || pet.photos!.isEmpty
                        ? null
                        : pet.photos!.first.medium,
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        pet.name!,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      error: (error, stackTrace) => const SizedBox.shrink(),
      loading: () => const ListItemShimmer(),
    );
  }
}
