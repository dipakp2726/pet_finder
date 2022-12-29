import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_heaven/core/configs/styles/app_colors.dart';
import 'package:pet_heaven/core/widgets/app_cached_network_image.dart';
import 'package:pet_heaven/core/widgets/error_view.dart';
import 'package:pet_heaven/core/widgets/shimmer.dart';
import 'package:pet_heaven/features/pet/model/pet.dart';
import 'package:pet_heaven/features/pet/providers/adoption_provider.dart';
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
                  petAvatar:
                      data.photos!.isNotEmpty ? data.photos!.first.large : null,
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
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(50),
                    ),
                    child: Stack(
                      children: [
                        if (data.photos == null || data.photos!.isEmpty)
                          Image.asset(
                            'assets/images/placeholder.png',
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                            height: 160,
                          )
                        else
                          AppCachedNetworkImage(
                            imageUrl: data.photos!.first.large!,
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                            height: 160,
                          ),
                        AdoptedShadowWidget(petId: data.id!),
                        AlreadyAdoptedMarker(petId: data.id!),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
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
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Text(
                          data.name!.getPrice(),
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).primaryTextTheme.headline4,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_rounded,
                            color: AppColors.primary,
                            size: 18,
                          ),
                          Flexible(
                            child: Text(
                              data.contact?.address?.city ?? ' city',
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                    color: AppColors.black,
                                  ),
                            ),
                          ),
                          Text(
                            '-${data.contact?.address?.state ?? ' State'}',
                            overflow: TextOverflow.ellipsis,
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      color: AppColors.black,
                                    ),
                          ),
                        ],
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
      loading: Shimmer.new,
    );
  }
}

class AdoptedShadowWidget extends ConsumerWidget {
  const AdoptedShadowWidget({required this.petId, super.key});

  final int petId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isAdopted = ref.watch(isPetAdpotedProvider(petId: petId));
    return isAdopted
        ? Container(
            width: MediaQuery.of(context).size.width,
            height: 160,
            color: AppColors.black.withAlpha(150),
          )
        : const SizedBox.shrink();
  }
}

class AlreadyAdoptedMarker extends ConsumerWidget {
  const AlreadyAdoptedMarker({required this.petId, super.key});

  final int petId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isAdopted = ref.watch(isPetAdpotedProvider(petId: petId));
    return isAdopted
        ? Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.only(left: 4),
              width: MediaQuery.of(context).size.width,
              color: Colors.red.withAlpha(150),
              alignment: Alignment.topLeft,
              child: Text(
                'Already Adopted',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          )
        : const SizedBox.shrink();
  }
}
