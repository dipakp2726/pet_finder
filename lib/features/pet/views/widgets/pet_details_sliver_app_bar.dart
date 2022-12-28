import 'package:flutter/material.dart';
import 'package:pet_heaven/core/widgets/app_bar_leading.dart';
import 'package:pet_heaven/features/pet/views/widgets/pet_cover.dart';

/// Pet details page Sliver AppBar widget
class PetDetailsSliverAppBar extends StatelessWidget {
  /// Creates a new instance of [PetDetailsSliverAppBar]
  const PetDetailsSliverAppBar({
    super.key,
    this.avatar,
    required this.petId,
  });

  /// Id of the Pet being previewed
  final int petId;

  /// Avatar of the Pet
  /// used for the Hero animation
  final String? avatar;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: MediaQuery.of(context).size.height * 0.35,
      collapsedHeight: 100,
      leadingWidth: 70,
      backgroundColor: Colors.transparent,
      leading: const AppBarLeading(),
      pinned: true,
      flexibleSpace: Padding(
        padding: const EdgeInsetsDirectional.only(start: 40),
        child: Hero(
          tag: 'pet_${petId}_profile_picture',
          transitionOnUserGestures: true,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(50),
            ),
            child: PetCover(
              avatar,
              height: double.infinity,
            ),
          ),
        ),
      ),
    );
  }
}
