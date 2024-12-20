import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_heaven/core/widgets/animate_in_effect.dart';
import 'package:pet_heaven/core/widgets/app_loader.dart';
import 'package:pet_heaven/core/widgets/error_view.dart';
import 'package:pet_heaven/core/widgets/fade_in_effect.dart';
import 'package:pet_heaven/features/pet/providers/pet_details_provider.dart';
import 'package:pet_heaven/features/pet/views/widgets/adopt_me_button.dart';
import 'package:pet_heaven/features/pet/views/widgets/pet_decription.dart';
import 'package:pet_heaven/features/pet/views/widgets/pet_details_sliver_app_bar.dart';
import 'package:pet_heaven/features/pet/views/widgets/pet_info.dart';
import 'package:pet_heaven/features/pet/views/widgets/pet_media.dart';
import 'package:pet_heaven/features/pet/views/widgets/pet_name.dart';

/// Page widget of the Pet details
class PetDetailsPage extends ConsumerWidget {
  /// Creates new instance of [PetDetailsPage]
  const PetDetailsPage({
    required this.petId,
    required this.petName,
    required this.petAvatar,
    super.key,
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
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomScrollView(
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
                          AnimateInEffect(
                            child: PetInfo(pet),
                          ),
                          FadeInEffect(
                            child: PetImagesList(pet.photos ?? []),
                          ),
                          // PetImages(petId),
                          PetBio(pet.description),
                          SizedBox(
                            height: 60 + MediaQuery.of(context).padding.bottom,
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
          AnimateInEffect(
            child: AdoptMeButton(
              petId: petId,
              petName: petName,
            ),
          ),
        ],
      ),
    );
  }
}
