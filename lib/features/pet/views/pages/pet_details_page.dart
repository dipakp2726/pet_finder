import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_heaven/core/widgets/app_loader.dart';
import 'package:pet_heaven/core/widgets/error_view.dart';
import 'package:pet_heaven/features/pet/providers/pet_details_provider.dart';
import 'package:pet_heaven/features/pet/views/widgets/pet_info.dart';
import 'package:pet_heaven/features/pet/views/widgets/pet_name.dart';
import 'package:pet_heaven/features/pet/views/widgets/pet_bio.dart';
import 'package:pet_heaven/features/pet/views/widgets/pet_details_sliver_app_bar.dart';
import 'package:pet_heaven/features/pet/views/widgets/pet_media.dart';

/// Page widget of the Pet details
class PetDetailsPage extends ConsumerWidget {
  /// Creates new instance of [PetDetailsPage]
  const PetDetailsPage({
    super.key,
    required this.petId,
    required this.petName,
    required this.petAvatar,
  });

  /// Pet name
  final String petName;

  /// Pet avatar url
  final String? petAvatar;

  /// Pet id
  final int petId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final petAsync = ref.watch(petDetailsProvider(petId));

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          PetDetailsSliverAppBar(
            petId: petId,
            avatar: petAvatar,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              PetName(petName),
              petAsync.when(
                data: (pet) {
                  return Column(
                    children: [
                      PetInfo(pet),
                      PetImagesList(pet.photos ?? []),
                      // PetImages(petId),
                      PetBio(pet.description),
                      SizedBox(
                        height: 20 + MediaQuery.of(context).padding.bottom,
                      ),
                    ],
                  );
                },
                error: (Object error, StackTrace? stackTrace) {
                  log('Error fetching Pet details');
                  log(error.toString());
                  return const ErrorView();
                },
                loading: () => const AppLoader(),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
