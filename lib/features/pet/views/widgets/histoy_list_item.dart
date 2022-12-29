import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_heaven/core/widgets/list_item_shimmer.dart';
import 'package:pet_heaven/features/pet/providers/current_pet_provider.dart';
import 'package:pet_heaven/features/pet/views/pages/pet_details_page.dart';
import 'package:pet_heaven/features/pet/views/widgets/pet_avatar.dart';

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
