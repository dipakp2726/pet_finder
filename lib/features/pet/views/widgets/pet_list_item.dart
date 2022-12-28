import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_heaven/core/configs/styles/app_colors.dart';
import 'package:pet_heaven/core/widgets/app_cached_network_image.dart';
import 'package:pet_heaven/core/widgets/error_view.dart';
import 'package:pet_heaven/core/widgets/list_item_shimmer.dart';
import 'package:pet_heaven/features/pet/providers/current_pet_provider.dart';
import 'package:pet_heaven/features/pet/views/pages/pet_details_page.dart';

/// Widget holding a list item in the Pet list
class PetListItem extends ConsumerWidget {
  /// Creates a new instance of [PetListItem]
  const PetListItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final petAsync = ref.watch(currentPetProvider);

    return petAsync.when(
      data: (data) {
        return InkWell(
          onTap: () {
            Navigator.of(context).push<PetDetailsPage>(
              MaterialPageRoute<PetDetailsPage>(
                builder: (context) => PetDetailsPage(
                  petId: data.id!,
                  petAvatar: data.photos!.isNotEmpty
                      ? data.photos!.first.large!
                      : _image,
                  petName: data.name!,
                ),
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: AppColors.aliceWhite,
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: 'pet_${data.id}_profile_picture',
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(50)),
                    child: AppCachedNetworkImage(
                      imageUrl: data.photos!.isNotEmpty
                          ? data.photos!.first.large!
                          : _image,
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                      height: 160,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data.name ?? ' Name',
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                              color: AppColors.black,
                            ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        data.contact?.address?.city ?? ' city',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              color: AppColors.black,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      error: (Object error, StackTrace? stackTrace) {
        log('Error fetching current popular Pet');
        log(error.toString());
        return const ErrorView();
      },
      loading: () => const ListItemShimmer(),
    );
  }
}

const _image = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:'
    'ANd9GcRm7Bn3VJPwzwkwpoSyOnZWyYb4SIG-nMFJFg&usqp=CAU';
