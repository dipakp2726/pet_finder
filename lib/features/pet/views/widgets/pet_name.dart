import 'package:flutter/material.dart';
import 'package:pet_heaven/core/configs/styles/app_colors.dart';
import 'package:pet_heaven/core/widgets/fade_in_effect.dart';
import 'package:pet_heaven/features/pet/model/pet.dart';

/// Widget for a Pet name with adaptive text size
class PetName extends StatelessWidget {
  /// Creates a new instance of [PetName]
  const PetName(
    this.petName, {
    super.key,
  });

  /// Pet name
  final String petName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 40,
            end: 100,
            top: 20,
            bottom: 15,
          ),
          child: Text(
            petName,
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontSize: petName.length > 10 ? 40 : 60,
                  fontWeight: FontWeight.w400,
                  color: AppColors.white,
                ),
          ),
        ),
        FadeInEffect(
          intervalStart: 0.5,
          child: Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 40,
              end: 100,
            ),
            child: Text(
              petName.getPrice(),
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).primaryTextTheme.displayLarge,
            ),
          ),
        ),
      ],
    );
  }
}
